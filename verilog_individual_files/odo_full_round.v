module odo_full_round(clk, roundkey, in, out);
    input clk;
    input [9:0] roundkey;
    input [639:0] in;
    output [639:0] out;
    wire [639:0] mid[0:3];
    odo_apply_pbox0 pbox0inst(in, mid[0]);
    odo_apply_sboxes sboxes(clk, mid[0], mid[1]);
    odo_apply_pbox1 pbox1inst(mid[1], mid[2]);
    odo_apply_rotations rotations(mid[2], mid[3]);
    odo_apply_round_key keys(roundkey, mid[3], out);
endmodule

