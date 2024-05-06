// Define a single s-box module
module sbox(clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    reg [3:0] mem[0:15];
    always @(posedge clk) begin
        out <= mem[in];
    end
    initial begin
        // Initialization of s-box values, example for one s-box
        mem[0] = 4'hE;
        mem[1] = 4'h4;
        // Add remaining initializations...
    end
endmodule

// Define pre-mixing module
module pre_mix(in, out);
    input [127:0] in;
    output [127:0] out;
    wire [31:0] total;
    assign total = in[31:0] ^ in[63:32] ^ in[95:64] ^ in[127:96];
    assign out = in ^ {4{total}};
endmodule

// Define p-box application module
module apply_pbox(in, out);
    input [127:0] in;
    output [127:0] out;
    assign out = {in[7:0], in[15:8], in[23:16], in[31:24], in[39:32], in[47:40], in[55:48], in[63:56], in[71:64], in[79:72], in[87:80], in[95:88], in[103:96], in[111:104], in[119:112], in[127:120]};
endmodule

// Define rotation helper module
module rotation_helper(in, out);
    input [31:0] in;
    output [31:0] out;
    assign out = {in[15:0], in[31:16]};
endmodule

// Define apply rotations module
module apply_rotations(in, out);
    input [127:0] in;
    output [127:0] out;
    wire [31:0] part0, part1, part2, part3;
    rotation_helper rh0(in[31:0], part0);
    rotation_helper rh1(in[63:32], part1);
    rotation_helper rh2(in[95:64], part2);
    rotation_helper rh3(in[127:96], part3);
    assign out = {part3, part2, part1, part0};
endmodule

// Define apply round key module
module apply_round_key(key, in, out);
    input [31:0] key;
    input [127:0] in;
    output [127:0] out;
    assign out = in ^ {4{key}};
endmodule

// Define full round module
module full_round(clk, roundkey, in, out);
    input clk;
    input [31:0] roundkey;
    input [127:0] in;
    output [127:0] out;
    wire [127:0] mid0, mid1, mid2, mid3;
    pre_mix pm(in, mid0);
    apply_pbox pb0(mid0, mid1);
    apply_sboxes sb(clk, mid1, mid2);
    apply_pbox pb1(mid2, mid3);
    apply_rotations rot(mid3, out);
endmodule

// Encryption loop
module encrypt_loop(clk, in, read, out, write);
    input clk;
    input [127:0] in;
    input read;
    output reg [127:0] out;
    output write;
    reg [127:0] state;
    wire [127:0] next;
    full_round fr(clk, roundkey, state, next);
    reg progress;
    initial progress = 0;
    always @(posedge clk) begin
        if (read) begin
            state <= in;
        end else begin
            state <= next;
        end
        progress <= read;
    end
    assign write = progress;
endmodule

// Encrypt module
module encrypt(clk, in, read, out, write);
    input clk;
    input [127:0] in;
    input read;
    output [127:0] out;
    output write;
    reg [127:0] state;
    wire [127:0] next;
    encrypt_loop el(clk, state, read, next, write);
    always @(posedge clk) begin
        state <= in;
        out <= next;
    end
endmodule
