module odo_get_round_key4(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h2d1;
        4'h1: key <= 10'h081;
        4'h2: key <= 10'h0fd;
        4'h3: key <= 10'h080;
        4'h4: key <= 10'h1c4;
        4'h5: key <= 10'h1d6;
        4'h6: key <= 10'h2cf;
        4'h7: key <= 10'h25d;
        4'h8: key <= 10'h083;
    endcase
    end
endmodule

