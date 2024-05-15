// miner.v 

`define THROUGHPUT 1000

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