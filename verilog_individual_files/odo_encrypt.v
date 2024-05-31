module odo_encrypt(clk, in, read, out, write);
    localparam THROUGHPUT = 10;
    input clk;
    input [639:0] in;
    input read;
    output [639:0] out;
    output write;
    reg [1:0] progress;
    initial progress = 2'h0;
    reg [639:0] state[1:0];
    wire [639:0] next;
    odo_pre_mix premixer(state[0], next);
    odo_encrypt_loop crypter(clk, state[1], progress[1], out, write);
    always @(posedge clk) begin
        progress[0] <= read;
        progress[1] <= progress[0];
        state[0] <= in;
        state[1] <= next;
    end
endmodule
