module odo_pre_mix(in, out);
    input [639:0] in;
    output [639:0] out;
    wire [63:0] total;
    assign total = 0 ^ in[63:0] ^ in[127:64] ^ in[191:128] ^ in[255:192] ^ in[319:256] ^ in[383:320] ^ in[447:384] ^ in[511:448] ^ in[575:512] ^ in[639:576];
    assign out[63:0] = in[63:0] ^ total ^ (total >> 32);
    assign out[127:64] = in[127:64] ^ total ^ (total >> 32);
    assign out[191:128] = in[191:128] ^ total ^ (total >> 32);
    assign out[255:192] = in[255:192] ^ total ^ (total >> 32);
    assign out[319:256] = in[319:256] ^ total ^ (total >> 32);
    assign out[383:320] = in[383:320] ^ total ^ (total >> 32);
    assign out[447:384] = in[447:384] ^ total ^ (total >> 32);
    assign out[511:448] = in[511:448] ^ total ^ (total >> 32);
    assign out[575:512] = in[575:512] ^ total ^ (total >> 32);
    assign out[639:576] = in[639:576] ^ total ^ (total >> 32);
endmodule

