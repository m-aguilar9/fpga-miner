`timescale 1ns/1ps

module miner_testbench;
    reg osc_clk;
    reg reset; // Added reset signal
    wire [31:0] nonce;
    wire [43:0] padded_nonce;

    // Instantiate the miner_top module
    miner_top uut (
        .osc_clk(osc_clk),
        .reset(reset),
        .nonce(nonce),
        .padded_nonce(padded_nonce)
    );

    // Clock generation
    initial begin
        osc_clk = 0;
        forever #5 osc_clk = ~osc_clk; // 100 MHz clock
    end

    // Simulation control
    initial begin
        // Initialize signals
        reset = 1;
        #10 reset = 0; // Release reset after 10ns
        #100000; // Run simulation for 1000ns
        $finish;
    end

    // Add waveform dump for GTKWave or other simulators
    initial begin
        $dumpfile("miner_testbench.vcd");
        $dumpvars(0, miner_testbench);
        $dumpvars(1, uut);
    end
endmodule

