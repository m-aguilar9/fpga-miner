module odo_get_round_key2(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h3ef;
        4'h1: key <= 10'h2d9;
        4'h2: key <= 10'h2d7;
        4'h3: key <= 10'h229;
        4'h4: key <= 10'h008;
        4'h5: key <= 10'h335;
        4'h6: key <= 10'h091;
        4'h7: key <= 10'h073;
        4'h8: key <= 10'h1ce;
        4'h9: key <= 10'h1c6;
    endcase
    end
endmodule

