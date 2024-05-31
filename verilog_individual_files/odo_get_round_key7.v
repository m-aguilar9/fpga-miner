module odo_get_round_key7(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h03b;
        4'h1: key <= 10'h183;
        4'h2: key <= 10'h2cf;
        4'h3: key <= 10'h2dc;
        4'h4: key <= 10'h246;
        4'h5: key <= 10'h0b7;
        4'h6: key <= 10'h1d8;
        4'h7: key <= 10'h2ce;
        4'h8: key <= 10'h3f2;
    endcase
    end
endmodule

