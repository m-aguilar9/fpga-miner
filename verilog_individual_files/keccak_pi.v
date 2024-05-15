// keccak800.v

`define IDX32(x) ((x)*(32)) +: 32
`define LANE(x,y) (((x)%5)+5*((y)%5))

module keccak_pi(in, out);
    input [799:0] in;
    output [799:0] out;
    
    genvar x;
    genvar y;
    generate
    for (x = 0; x < 5; x = x+1)
    begin : outer
        for (y = 0; y < 5; y = y+1)
        begin : loop
            assign out[`IDX32(`LANE(0*x+1*y, 2*x+3*y))] = in[`IDX32(`LANE(x, y))];
        end
    end
    endgenerate
endmodule