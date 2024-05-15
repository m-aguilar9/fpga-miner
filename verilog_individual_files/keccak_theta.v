// keccak800.v

`define IDX32(x) ((x)*(32)) +: 32
`define LANE(x,y) (((x)%5)+5*((y)%5))

module keccak_theta(in, out);
    input [799:0] in;
    output [799:0] out;
    wire [31:0] parity [4:0];
    
    genvar i;
    generate
    for (i = 0; i < 5; i = i+1)
    begin : loop1
        assign parity[i] = in[`IDX32(i)] ^ in[`IDX32(i+5)] ^ in[`IDX32(i+10)] ^ in[`IDX32(i+15)] ^ in[`IDX32(i+20)];
    end
    endgenerate

    generate
    for (i = 0; i < 25; i = i+1)
    begin : loop2
        wire [31:0] tmp = {parity[(i+1)%5][30:0], parity[(i+1)%5][31]};
        assign out[`IDX32(i)] = in[`IDX32(i)] ^ parity[(i+4)%5] ^ tmp;
    end
    endgenerate
endmodule