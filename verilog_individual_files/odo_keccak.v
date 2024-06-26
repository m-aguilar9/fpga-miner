`include "global_defines.v"
module odo_keccak(
    input clk,
    input [639:0] in,
    input read,
    input [255:0] target,
    output out,
    output write
);

    wire [639:0] midstate;
    wire midread;
    wire [255:0] pow_hash;
    wire has_hash;

	odo_encrypt crypt(clk, in, read, midstate, midread);
    keccak_hasher #(640, `THROUGHPUT) hash(clk, midstate, midread, pow_hash, has_hash);
    cmp_256 compare(clk, pow_hash, has_hash, target, out, write);
endmodule
