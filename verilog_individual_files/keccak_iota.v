// keccak800.v

module keccak_iota(in, roundkey, out);
    input [799:0] in;
    input [7:0] roundkey;
    output [799:0] out;
    
    wire [31:0] expanded;
    keccak_key_expand re(roundkey, expanded);
    assign out = {in[799:32], in[31:0] ^ expanded};
endmodule   