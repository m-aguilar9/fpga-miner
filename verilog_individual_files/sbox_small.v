// og generated.v

// Example S-box module
module sbox_small(clk, in, out);
    input clk;
    input [3:0] in;
    output reg [3:0] out;
    reg [3:0] mem [0:15];

    always @(posedge clk) begin
        out <= mem[in];
    end

    initial begin
        mem[0] = 4'h0; mem[1] = 4'h1; mem[2] = 4'h2; mem[3] = 4'h3;
        mem[4] = 4'h4; mem[5] = 4'h5; mem[6] = 4'h6; mem[7] = 4'h7;
        mem[8] = 4'h8; mem[9] = 4'h9; mem[10] = 4'hA; mem[11] = 4'hB;
        mem[12] = 4'hC; mem[13] = 4'hD; mem[14] = 4'hE; mem[15] = 4'hF;
    end
endmodule