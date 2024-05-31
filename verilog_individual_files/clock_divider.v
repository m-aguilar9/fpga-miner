module clock_divider (
    input wire clk_in,
    input wire reset, // Added reset signal
    output reg clk_out
);

    reg [1:0] counter = 2'b0;

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 2'b0;
            clk_out <= 1'b0;
        end else begin
            counter <= counter + 2'b1;
            clk_out <= (counter == 2'b0);
        end
    end
endmodule

