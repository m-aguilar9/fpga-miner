
`define THROUGHPUT 1000
module cmp_256(clk, in, read, target, out, write);
    input clk;
    input [255:0] in;
    input read;
    input [255:0] target;
    output reg out;
    output reg write;
    
    reg [15:0] greater, less;
    reg progress;
    initial progress = 0;
    initial write = 0;
    
    genvar i;
    generate
    for (i = 0; i < 16; i = i+1)
    begin : loop
        always @(posedge clk)
        begin
            greater[i] <= (in[16*i+15:16*i] > target[16*i+15:16*i]);
            less[i] <= (in[16*i+15:16*i] < target[16*i+15:16*i]);
        end
    end
    endgenerate
    
    always @(posedge clk)
    begin
        out <= (greater < less);
        progress <= read;
        write <= progress;
    end
endmodule

module odo_keccak(clk, in, read, target, out, write);
    input clk;
    input [639:0] in;
    input read;
    input [255:0] target;
    output out;
    output write;

    wire [639:0] midstate;
    wire midread;
    wire [255:0] pow_hash;
    wire has_hash;
    
    odo_encrypt crypt(clk, in, read, midstate, midread);
    keccak_hasher #(640, `THROUGHPUT) hash(clk, midstate, midread, pow_hash, has_hash);
    cmp_256 compare(clk, pow_hash, has_hash, target, out, write);
endmodule

module miner(clk, reset, header, target, nonce);
    parameter INONCE = 0; // for testing

    input clk;
    input reset;
    input [607:0] header;
    input [255:0] target;
    output wire [31:0] nonce;
    
    reg [31:0] nonce_in;
    reg [31:0] nonce_out;

    
    reg [6:0] counter;
    reg advance;
    
    wire res;
    wire has_res;
    
    odo_keccak worker(clk, {nonce_in, header}, advance, target, res, has_res);
    
    always @(posedge clk, posedge reset)
    begin
		 if ( reset == 1'b1 ) begin
				counter <= '0;
				advance <= '0;
				nonce_out <= INONCE;
				nonce <= '0;
		 else
			  if (counter == `THROUGHPUT-1)
				  begin
						counter <= 0;
						advance <= 1;
				  end
			  else
			  begin
					counter <= counter + 1;
					advance <= 0;
			  end
			  if (advance)
					nonce_in <= nonce_in + 1;
			  if (has_res)
			  begin
					if (res)
						nonce_out <= nonce_out + 1;
			  end
		 end
	 end

	 assign nonce = nonce_out;

 endmodule

module pad_nonce(clk, in, out);
    input clk;
    input [31:0] in;
    output reg [43:0] out;

    wire [11:0] checksum;
    crc12 cksum(in, checksum);

    always @(posedge clk)
    begin
        out <= { checksum, in };
    end
endmodule

module miner_top(clk, reset);
    input clk;
	 input reset;
    
    wire [607:0] header;
    // Altera docs suggest maximum source width is 256, but it actually seems
    // to go higher than that (but not up to 608). So split the header into 2
    // separate probe instances.
    source #(288, "WRK1") src1(header[287:0]);
    source #(320, "WRK2") src2(header[607:288]);
    
    // A full 256 bits for this may be a bit overkill
    wire [255:0] target;
    source #(256, "TRGT") src3(target);
    
    wire [31:0] nonce;
    wire [43:0] padded_nonce;
    probe #(44, "GNON") probe_nonce(padded_nonce);
    
    wire [31:0] seed = "0x1A3B5C7E9D8F6E4C2B0A1D3F4E6B8A9C";``
    probe #(32, "SEED") probe_seed(seed);
    
    //wire miner_clk, locked;
    //pll main_pll(.clk(clk), .rst(reset), .outclk_0(miner_clk), .locked(locked));

    miner m0(miner_clk, header, target, nonce);
    pad_nonce p0(miner_clk, nonce, padded_nonce);
endmodule
    