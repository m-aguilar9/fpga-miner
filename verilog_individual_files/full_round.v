//generated.v

// Full round module
module full_round(clk, roundkey, in, out);
    input clk;
    input [19:0] roundkey;
    input [639:0] in;
    output [639:0] out;
    wire [639:0] mid[0:3];
    apply_pbox0 pbox0inst (.in(in), .out(mid[0]));
    sbox_large sboxes (.clk(clk), .a_in(mid[0][7:0]), .b_in(mid[0][15:8]), .a_out(mid[1][7:0]), .b_out(mid[1][15:8]));
    apply_pbox1 pbox1inst (.in(mid[1]), .out(mid[2]));
    apply_rotations rotations (.in(mid[2]), .out(mid[3]));
    apply_round_key keys (.key(roundkey), .in(mid[3]), .out(out));
endmodule