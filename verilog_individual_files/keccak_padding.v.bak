// keccak800.v

module keccak_padding(in, out);
    parameter WIDTH = 0;
    
    input [WIDTH-1:0] in;
    output [807:0] out;
    
    // 0x35 for 12 rounds
    assign out = {8'h35, {799-WIDTH{1'b0}}, 1'b1, in};
endmodule