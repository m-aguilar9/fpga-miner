// generated.v

// Rotation helper module
module rotation_helper(in, out);
    input [31:0] in;
    output [31:0] out;
    assign out = {in[31:8], in[7:0]} ^ {in[23:0], in[31:24]};
endmodule