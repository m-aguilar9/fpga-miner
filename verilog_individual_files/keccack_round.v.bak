// keccak800.v

module keccak_round(clk, in, out);
    input clk;
    input [807:0] in;
    output [807:0] out;
    
    wire [799:0] midstate [6:0];
    wire [7:0] roundkey [2:0];
    
    reg [799:0] statebuf;
    reg [7:0] keybuf;
    
    assign midstate[0] = in[799:0];
    assign roundkey[0] = in[807:800];
    
    keccak_theta  theta (midstate[0], midstate[1]);
    keccak_buffer buffer(clk, midstate[1], roundkey[0], midstate[2], roundkey[1]);
    keccak_rho    rho   (midstate[2], midstate[3]);
    keccak_pi     pi    (midstate[3], midstate[4]);
    keccak_chi    chi   (midstate[4], midstate[5]);
    keccak_iota   iota  (midstate[5], roundkey[1], midstate[6]);
    keccak_next_round next(roundkey[1], roundkey[2]);
    
    assign out = {roundkey[2], midstate[6]};
endmodule

module keccak_padding(in, out);
    parameter WIDTH = 0;
    
    input [WIDTH-1:0] in;
    output [807:0] out;
    
    // 0x35 for 12 rounds
    assign out = {8'h35, {799-WIDTH{1'b0}}, 1'b1, in};
endmodule
