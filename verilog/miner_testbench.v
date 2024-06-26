`timescale 1ns/1ps

module miner_testbench;
    reg osc_clk;
    

    // Instantiate the miner_top module
    miner_top uut (
        .osc_clk(osc_clk)
    );

    // Clock generation
    initial begin
        osc_clk = 0;
        forever #5 osc_clk = ~osc_clk; // 100 MHz clock
    end

    // Simulation control
    initial begin
        // Initialize the signals if needed
        #10; // Wait for a few clock cycles
        // Add more stimulus if needed
        #100000; // Run simulation for 1000ns
        $finish;
    end

    // Add waveform dump for GTKWave or other simulators
    initial begin
        $dumpfile("miner_testbench.vcd");
        $dumpvars(0, miner_testbench);
    end
endmodule

