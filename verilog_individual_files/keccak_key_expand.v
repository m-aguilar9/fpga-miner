// keccak800.v

module keccak_key_expand(in, out);
    input [7:0] in;
    output [31:0] out;
    
    assign out = {in[5], 15'b0, in[4], 7'b0, in[3], 3'b0, in[2], 1'b0, in[1], in[0]};
endmodule