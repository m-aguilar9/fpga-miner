//generated.v

// Encrypt module
module odo_encrypt(clk, in, read, out, write);
    input clk;
    input [639:0] in;
    input read;
    output [639:0] out;
    output write;
    reg [1:0] progress;
    reg [639:0] state[1:0];
    wire [639:0] next;
    
    pre_mix premixer (.in(state[0]), .out(next));
    encrypt_loop crypter (.clk(clk), .in(state[1]), .read(progress[1]), .out(out), .write(write));

    always @(posedge clk) begin
        progress[0] <= read;
        progress[1] <= progress[0];
        state[0] <= in;
        state[1] <= next;
    end
endmodule