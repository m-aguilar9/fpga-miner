`timescale 1ns / 1ps

module testbench;

    // Parameters for testing
    localparam WIDTH = 32;
    localparam NAME = "TEST";
    localparam IVAL = "FFFFFFFF"; // Example initial value

    // Test signals
    reg [WIDTH-1:0] test_input;
    wire [WIDTH-1:0] test_output;

    // Instantiate the source module
    source #(
        .WIDTH(WIDTH),
        .NAME(NAME),
        .IVAL(IVAL)
    ) source_instance (
        .source(test_output)
    );

    // Instantiate the probe module
    probe #(
        .WIDTH(WIDTH),
        .NAME(NAME)
    ) probe_instance (
        .probe(test_input)
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        test_input = 0;
        
        // Monitor changes
        $monitor("Time=%g, test_input=%h, test_output=%h", $time, test_input, test_output);

        // Apply test vectors
        #10 test_input = 32'hA5A5A5A5;
        #10 test_input = 32'h5A5A5A5A;
        #10 test_input = 32'hFFFFFFFF;
        #10 test_input = 32'h00000000;

        // Wait some time and finish the simulation
        #50 $finish;
    end

endmodule
