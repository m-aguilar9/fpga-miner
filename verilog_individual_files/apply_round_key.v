// generated.v

// Apply round key module
module apply_round_key(key, in, out);
    input [19:0] key;
    input [639:0] in;
    output [639:0] out;
    generate
        genvar i;
        for (i = 0; i < 20; i = i + 1) begin: round_key
            assign out[32*(i+1)-1:32*i] = in[32*(i+1)-1:32*i] ^ {28'h0, key[i]};
        end
    endgenerate
endmodule