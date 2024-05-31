module odo_get_round_key5(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h343;
        4'h1: key <= 10'h227;
        4'h2: key <= 10'h033;
        4'h3: key <= 10'h3ec;
        4'h4: key <= 10'h07b;
        4'h5: key <= 10'h357;
        4'h6: key <= 10'h18c;
        4'h7: key <= 10'h1d6;
        4'h8: key <= 10'h046;
    endcase
    end
endmodule

