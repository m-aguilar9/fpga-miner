// miner.v
`define THROUGHPUT 1000

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