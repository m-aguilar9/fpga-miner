`timescale 1ns / 1ps

module keccak_testbench;
    // Inputs and Outputs for individual test modules
    reg [7:0] in_next_round;
    wire [7:0] out_next_round;

    reg [7:0] in_key_expand;
    wire [31:0] out_key_expand;

    reg [799:0] in_theta, in_rho, in_pi, in_chi, in_iota;
    wire [799:0] out_theta, out_rho, out_pi, out_chi, out_iota;

    reg [7:0] roundkey_iota;
    wire [799:0] state_iota;

    // Instantiate modules
    keccak_next_round next_round_inst (
        .in(in_next_round),
        .out(out_next_round)
    );

    keccak_key_expand key_expand_inst (
        .in(in_key_expand),
        .out(out_key_expand)
    );

    keccak_theta theta_inst (
        .in(in_theta),
        .out(out_theta)
    );

    keccak_rho rho_inst (
        .in(in_rho),
        .out(out_rho)
    );

    keccak_pi pi_inst (
        .in(in_pi),
        .out(out_pi)
    );

    keccak_chi chi_inst (
        .in(in_chi),
        .out(out_chi)
    );

    keccak_iota iota_inst (
        .in(in_iota),
        .roundkey(roundkey_iota),
        .out(state_iota)
    );

    // Clock for synchronous operations
    reg clk;
    initial clk = 0;
    always #5 clk = ~clk;

    // Test vector application and result monitoring
    initial begin
        // Initialize all inputs
        in_next_round = 8'h00;
        in_key_expand = 8'h00;
        in_theta = 800'h0;
        in_rho = 800'h0;
        in_pi = 800'h0;
        in_chi = 800'h0;
        in_iota = 800'h0;
        roundkey_iota = 8'h00;

        // Set up monitors
        $monitor("Time=%t, in_next_round=%h, out_next_round=%h", $time, in_next_round, out_next_round);
        $monitor("Time=%t, in_key_expand=%h, out_key_expand=%h", $time, in_key_expand, out_key_expand);
        $monitor("Time=%t, in_theta=%h, out_theta=%h", $time, in_theta, out_theta);
        $monitor("Time=%t, in_rho=%h, out_rho=%h", $time, in_rho, out_rho);
        $monitor("Time=%t, in_pi=%h, out_pi=%h", $time, in_pi, out_pi);
        $monitor("Time=%t, in_chi=%h, out_chi=%h", $time, in_chi, out_chi);
        $monitor("Time=%t, in_iota=%h, roundkey_iota=%h, state_iota=%h", $time, in_iota, roundkey_iota, state_iota);

        // Apply test vectors
        #10 in_next_round = 8'hFF;
        #10 in_key_expand = 8'hAA;
        #20 in_theta = {50{16'hA5A5}};
        #20 in_rho = {50{16'h5A5A}};
        #20 in_pi = {50{16'h0F0F}};
        #20 in_chi = {50{16'hF0F0}};
        #20 in_iota = {50{16'hFFFF}};
        roundkey_iota = 8'h55;

        // Additional delay for observation
        #100 $finish;
    end
endmodule
