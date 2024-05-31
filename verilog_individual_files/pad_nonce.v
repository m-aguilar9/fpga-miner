module pad_nonce(
    input clk,
    input reset, // Added reset signal
    input [31:0] in,
    output reg [43:0] out
);

    wire [11:0] checksum;
    crc12 cksum(in, checksum);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 44'b0;
        end else begin
            out <= { checksum, in };
        end
    end
endmodule
