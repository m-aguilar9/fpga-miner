`timescale 1ns / 1ps


module testbench;
    // Clock for the entire system
    reg osc_clk;
    initial osc_clk = 0;
    always #10 osc_clk = ~osc_clk; // Clock with a 50 MHz frequency
    
    // Inputs for miner_top - declared as reg because we need to drive these from test vectors
    reg [607:0] header_miner_reg;
    reg [255:0] target_miner_reg;
    
    // Intermediate wires to connect to the inputs of miner_top
    wire [607:0] header_miner;
    wire [255:0] target_miner;

    // Outputs from miner_top (monitored via internal probes)
    wire [31:0] nonce_miner;
    wire [43:0] padded_nonce;

    // Instantiate miner_top
    miner_top miner_system(
        .clk(osc_clk),
        .header(header_miner),
        .target(target_miner),
        .nonce(nonce_miner),
        .padded_nonce(padded_nonce)
    );

    // Connect the reg types to the miner_top inputs
    assign header_miner = header_miner_reg;
    assign target_miner = target_miner_reg;

    // Begin testing
    initial begin
        // Monitoring outputs
        $monitor("Time=%t, nonce_miner=%h, padded_nonce=%h", $time, nonce_miner, padded_nonce);
        
        // Apply test vectors
        #20 header_miner_reg = 608'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA;
        #20 target_miner_reg = 256'hFFFF0000FFFF0000FFFF0000FFFF0000;

        // Additional time to observe changes
        #200 $finish;
    end

endmodule