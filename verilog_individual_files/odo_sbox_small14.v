module odo_sbox_small14(clk, in, out);
    input clk;
    input [5:0] in;
    output reg [5:0] out;
    reg [5:0] mem[0:63];
    always @(posedge clk) begin
        out <= mem[in];
    end
    initial begin
        mem[0] = 6'h2b;
        mem[1] = 6'h39;
        mem[2] = 6'h1d;
        mem[3] = 6'h0f;
        mem[4] = 6'h2c;
        mem[5] = 6'h3b;
        mem[6] = 6'h3a;
        mem[7] = 6'h14;
        mem[8] = 6'h35;
        mem[9] = 6'h0a;
        mem[10] = 6'h37;
        mem[11] = 6'h30;
        mem[12] = 6'h09;
        mem[13] = 6'h11;
        mem[14] = 6'h25;
        mem[15] = 6'h21;
        mem[16] = 6'h23;
        mem[17] = 6'h17;
        mem[18] = 6'h22;
        mem[19] = 6'h1b;
        mem[20] = 6'h01;
        mem[21] = 6'h19;
        mem[22] = 6'h2a;
        mem[23] = 6'h00;
        mem[24] = 6'h05;
        mem[25] = 6'h2d;
        mem[26] = 6'h0c;
        mem[27] = 6'h1c;
        mem[28] = 6'h32;
        mem[29] = 6'h06;
        mem[30] = 6'h2f;
        mem[31] = 6'h38;
        mem[32] = 6'h33;
        mem[33] = 6'h34;
        mem[34] = 6'h02;
        mem[35] = 6'h1f;
        mem[36] = 6'h0d;
        mem[37] = 6'h18;
        mem[38] = 6'h16;
        mem[39] = 6'h15;
        mem[40] = 6'h3f;
        mem[41] = 6'h31;
        mem[42] = 6'h0b;
        mem[43] = 6'h10;
        mem[44] = 6'h3c;
        mem[45] = 6'h3d;
        mem[46] = 6'h04;
        mem[47] = 6'h3e;
        mem[48] = 6'h36;
        mem[49] = 6'h1a;
        mem[50] = 6'h29;
        mem[51] = 6'h0e;
        mem[52] = 6'h2e;
        mem[53] = 6'h03;
        mem[54] = 6'h28;
        mem[55] = 6'h20;
        mem[56] = 6'h26;
        mem[57] = 6'h07;
        mem[58] = 6'h1e;
        mem[59] = 6'h12;
        mem[60] = 6'h27;
        mem[61] = 6'h13;
        mem[62] = 6'h24;
        mem[63] = 6'h08;
    end
endmodule

