// Table for crc polynomial 0x3F9.  This polynomial was chosen due to its
// ability to correct any contiguous string of bit-flips, and minimum gate
// complexity among those able to do so.
module crc12(in, out);
    input [31:0] in;
    output [11:0] out;

    assign out[0] = in[2] ^ in[4] ^ in[5] ^ in[8] ^ in[9] ^ in[11] ^ in[14] ^ in[15] ^ in[17] ^ in[19] ^ in[20] ^ in[25] ^ in[27] ^ in[28] ^ in[29];
    assign out[1] = in[0] ^ in[3] ^ in[5] ^ in[6] ^ in[9] ^ in[10] ^ in[12] ^ in[15] ^ in[16] ^ in[18] ^ in[20] ^ in[21] ^ in[26] ^ in[28] ^ in[29] ^ in[30];
    assign out[2] = in[0] ^ in[1] ^ in[4] ^ in[6] ^ in[7] ^ in[10] ^ in[11] ^ in[13] ^ in[16] ^ in[17] ^ in[19] ^ in[21] ^ in[22] ^ in[27] ^ in[29] ^ in[30] ^ in[31];
    assign out[3] = in[1] ^ in[4] ^ in[7] ^ in[9] ^ in[12] ^ in[15] ^ in[18] ^ in[19] ^ in[22] ^ in[23] ^ in[25] ^ in[27] ^ in[29] ^ in[30] ^ in[31];
    assign out[4] = in[4] ^ in[9] ^ in[10] ^ in[11] ^ in[13] ^ in[14] ^ in[15] ^ in[16] ^ in[17] ^ in[23] ^ in[24] ^ in[25] ^ in[26] ^ in[27] ^ in[29] ^ in[30] ^ in[31];
    assign out[5] = in[2] ^ in[4] ^ in[8] ^ in[9] ^ in[10] ^ in[12] ^ in[16] ^ in[18] ^ in[19] ^ in[20] ^ in[24] ^ in[26] ^ in[29] ^ in[30] ^ in[31];
    assign out[6] = in[0] ^ in[2] ^ in[3] ^ in[4] ^ in[8] ^ in[10] ^ in[13] ^ in[14] ^ in[15] ^ in[21] ^ in[28] ^ in[29] ^ in[30] ^ in[31];
    assign out[7] = in[1] ^ in[2] ^ in[3] ^ in[8] ^ in[16] ^ in[17] ^ in[19] ^ in[20] ^ in[22] ^ in[25] ^ in[27] ^ in[28] ^ in[30] ^ in[31];
    assign out[8] = in[0] ^ in[3] ^ in[5] ^ in[8] ^ in[11] ^ in[14] ^ in[15] ^ in[18] ^ in[19] ^ in[21] ^ in[23] ^ in[25] ^ in[26] ^ in[27] ^ in[31];
    assign out[9] = in[1] ^ in[2] ^ in[5] ^ in[6] ^ in[8] ^ in[11] ^ in[12] ^ in[14] ^ in[16] ^ in[17] ^ in[22] ^ in[24] ^ in[25] ^ in[26] ^ in[29];
    assign out[10] = in[0] ^ in[2] ^ in[3] ^ in[6] ^ in[7] ^ in[9] ^ in[12] ^ in[13] ^ in[15] ^ in[17] ^ in[18] ^ in[23] ^ in[25] ^ in[26] ^ in[27] ^ in[30];
    assign out[11] = in[1] ^ in[3] ^ in[4] ^ in[7] ^ in[8] ^ in[10] ^ in[13] ^ in[14] ^ in[16] ^ in[18] ^ in[19] ^ in[24] ^ in[26] ^ in[27] ^ in[28] ^ in[31];
endmodule