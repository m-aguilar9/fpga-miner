module odo_apply_round_key(key, in, out);
    input [9:0] key;
    input [639:0] in;
    output [639:0] out;
    assign out[0] = in[0] ^ key[0];
    assign out[63:1] = in[63:1];
    assign out[64] = in[64] ^ key[1];
    assign out[127:65] = in[127:65];
    assign out[128] = in[128] ^ key[2];
    assign out[191:129] = in[191:129];
    assign out[192] = in[192] ^ key[3];
    assign out[255:193] = in[255:193];
    assign out[256] = in[256] ^ key[4];
    assign out[319:257] = in[319:257];
    assign out[320] = in[320] ^ key[5];
    assign out[383:321] = in[383:321];
    assign out[384] = in[384] ^ key[6];
    assign out[447:385] = in[447:385];
    assign out[448] = in[448] ^ key[7];
    assign out[511:449] = in[511:449];
    assign out[512] = in[512] ^ key[8];
    assign out[575:513] = in[575:513];
    assign out[576] = in[576] ^ key[9];
    assign out[639:577] = in[639:577];
endmodule

