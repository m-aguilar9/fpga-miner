// generated.v

// Example large S-box module with dual port
module sbox_large(clk, a_in, b_in, a_out, b_out);
    input clk;
    input [7:0] a_in, b_in;
    output reg [7:0] a_out, b_out;
    reg [7:0] mem [0:255];

    always @(posedge clk) begin
        a_out <= mem[a_in];
        b_out <= mem[b_in];
    end

    initial begin
        // Initialize memory here for large S-box values
        // Example values:
        mem[0] = 8'h00; mem[1] = 8'h01; mem[2] = 8'h02; mem[3] = 8'h03;
        // Add more initialization values for all 256 entries
    end
endmodule
