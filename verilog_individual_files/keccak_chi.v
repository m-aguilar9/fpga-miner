//keccak800.v

`define IDX32(x) ((x)*(32)) +: 32
`define LANE(x,y) (((x)%5)+5*((y)%5))

module keccak_chi(in, out);
    input [799:0] in;
    output [799:0] out;
    
    genvar i;
    generate
    for (i = 0; i < 25; i = i+1)
    begin : loop
        localparam i1 = i-(i%5)+((i+1)%5);
        localparam i2 = i-(i%5)+((i+2)%5);
        assign out[`IDX32(i)] = in[`IDX32(i)] ^ ((~in[`IDX32(i1)]) & in[`IDX32(i2)]);
    end
    endgenerate
endmodule