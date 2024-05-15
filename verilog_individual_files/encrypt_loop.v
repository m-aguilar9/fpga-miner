// generated.v

// Encrypt loop module (single round key example)
module encrypt_loop(clk, in, read, out, write);
    input clk;
    input [639:0] in;
    input read;
    output reg [639:0] out;
    output write;
    reg [639:0] state[0:3];
    wire [639:0] next[0:3];
    
    always @(posedge clk) begin
        if (read) state[0] <= in;
        else state[0] <= next[3];
        state[1] <= next[0];
        state[2] <= next[1];
        state[3] <= next[2];
        out <= next[3];
    end
    
    // Connect full rounds to encrypt loop
    full_round round1 (.clk(clk), .roundkey(20'h12345), .in(state[0]), .out(next[0]));
    full_round round2 (.clk(clk), .roundkey(20'h67890), .in(state[1]), .out(next[1]));
    full_round round3 (.clk(clk), .roundkey(20'hABCDE), .in(state[2]), .out(next[2]));
    full_round round4 (.clk(clk), .roundkey(20'hFEDCB), .in(state[3]), .out(next[3]));
endmodule
