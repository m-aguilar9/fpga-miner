`timescale 1ns / 1ps

module testbench;
    // Clock for the entire system
    reg clk;
    initial clk = 0;
    always #10 clk = ~clk; // Clock with a 50 MHz frequency

    // Inputs and outputs for cmp_256
    reg [255:0] in_cmp, target_cmp;
    reg read_cmp;
    wire out_cmp;
    wire write_cmp;
    
    // Instantiate cmp_256
    cmp_256 cmp256(
        .clk(clk),
        .in(in_cmp),
        .read(read_cmp),
        .target(target_cmp),
        .out(out_cmp),
        .write(write_cmp)
    );

    // odo_keccak requires inputs and outputs setup
    reg [639:0] in_odo;
    reg read_odo;
    reg [255:0] target_odo;
    wire out_odo;
    wire write_odo;

    // Assuming odo_encrypt and keccak_hasher modules are correctly defined elsewhere
    // odo_keccak includes these modules, so we mock their behavior using simplified functionality
    wire [639:0] midstate_odo = in_odo; // Mock encryption simply passes through data
    wire midread_odo = read_odo;
    wire [255:0] pow_hash_odo = midstate_odo[255:0]; // Mock hashing truncates data
    wire has_hash_odo = midread_odo;

    // Instantiate odo_keccak
    odo_keccak odo_keccak_test(
        .clk(clk),
        .in(in_odo),
        .read(read_odo),
        .target(target_odo),
        .out(out_odo),
        .write(write_odo)
    );

    // miner tests
    reg [607:0] header_miner;
    reg [255:0] target_miner;
    wire [31:0] nonce_miner;
    
    // Instantiate miner
    miner miner_test(
        .clk(clk),
        .header(header_miner),
        .target(target_miner),
        .nonce(nonce_miner)
    );

    // pad_nonce tests
    reg [31:0] in_pad;
    wire [43:0] out_pad;
    
    // Instantiate pad_nonce
    pad_nonce pad_nonce_test(
        .clk(clk),
        .in(in_pad),
        .out(out_pad)
    );

    // Begin testing
    initial begin
        // Initial states
        read_cmp = 0; in_cmp = 0; target_cmp = 0;
        read_odo = 0; in_odo = 0; target_odo = 0;
        header_miner = 0; target_miner = 0;
        in_pad = 0;

        // Monitoring outputs
        $monitor("Time=%t, out_cmp=%b, write_cmp=%b, out_odo=%b, write_odo=%b, nonce_miner=%h, out_pad=%h", $time, out_cmp, write_cmp, out_odo, write_odo, nonce_miner, out_pad);

        // Apply test vectors for cmp_256
        #20 read_cmp = 1; in_cmp = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; target_cmp = 256'h0;
        #20 in_cmp = 256'h0; target_cmp = 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

        // Test odo_keccak with real cryptographic scenarios
        #50 read_odo = 1; in_odo = 640'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF; target_odo = 256'h0000FFFF0000FFFF0000FFFF0000FFFF;

        // Test miner and pad_nonce
        #100 header_miner = 608'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA; target_miner = 256'hFFFF0000FFFF0000FFFF0000FFFF0000;
        #100 in_pad = nonce_miner; // Using nonce from miner as input for pad_nonce

        // Additional time to observe changes
        #200 $finish;
    end

endmodule
