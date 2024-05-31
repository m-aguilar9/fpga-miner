module odo_rotation_helper(in, out);
    input [63:0] in;
    output [63:0] out;
    assign out = {in[30:0], in[63:31]} ^ {in[39:0], in[63:40]} ^ {in[40:0], in[63:41]} ^ {in[1:0], in[63:2]} ^ {in[21:0], in[63:22]} ^ {in[20:0], in[63:21]};
endmodule

