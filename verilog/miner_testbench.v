`timescale 1ns / 1ps
`include "miner.v"

module testbench;
    // Clock for the entire system
    reg osc_clk;
    initial osc_clk = 0;
    always #10 osc_clk = ~osc_clk; // Clock with a 50 MHz frequency
    
    // Inputs for miner_top
    reg [607:0] header_miner;
    reg [255:0] target_miner;
    
    // Outputs from miner_top (monitored via internal probes)
    wire [31:0] nonce_miner;
    wire [43:0] padded_nonce;

    // Instantiate miner_top
    miner_top miner_system(osc_clk);

    // Internal connections for monitoring and testing
    assign header_miner = miner_system.header;
    assign target_miner = miner_system.target;
    assign nonce_miner = miner_system.nonce;
    assign padded_nonce = miner_system.padded_nonce;

    // Begin testing
    initial begin
        // Monitoring outputs
        $monitor("Time=%t, nonce_miner=%h, padded_nonce=%h", $time, nonce_miner, padded_nonce);
        
        // Apply test vectors
        #20 header_miner = 608'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
        #20 target_miner = 256'hFFFF0000FFFF0000FFFF0000FFFF0000;

        // Additional time to observe changes
        #200 $finish;
    end

endmodule
