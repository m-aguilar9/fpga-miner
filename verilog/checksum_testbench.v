`timescale 1ns / 1ps

module crc12_tb;

    // Input and output wires for the test bench
    reg [31:0] in;
    wire [11:0] out;

    // Instantiate the crc12 module
    crc12 uut (
        .in(in),
        .out(out)
    );

    // Setup for generating the waveform dump
    initial begin
        $dumpfile("checksum_waveform.vcd");  // Specifies the name of the VCD file
        $dumpvars(0, crc12_tb);     // Dumps all variables of the crc12_tb module
    end

    // Test stimulus
    initial begin
        // Initialize input
        in = 0;
        // Monitor output
        $monitor("Time=%g, Input=%h, Output CRC12=%h", $time, in, out);

        // Test different input patterns
        #10 in = 32'hFFFFFFFF; // Test all-1's
        #10 in = 32'h00000000; // Test all-0's
        #10 in = 32'hAAAA5555; // Test alternating bits
        #10 in = 32'h12345678; // Test incremental pattern
        #10 in = 32'h89ABCDEF; // Test another incremental pattern
        #10 in = 32'hFEDCBA98; // Test reverse incremental pattern

        // Finish simulation after last test
        #50 $finish;
    end

endmodule
