module odo_get_round_key1(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h10e;
        4'h1: key <= 10'h0c1;
        4'h2: key <= 10'h120;
        4'h3: key <= 10'h21d;
        4'h4: key <= 10'h311;
        4'h5: key <= 10'h240;
        4'h6: key <= 10'h366;
        4'h7: key <= 10'h3c6;
        4'h8: key <= 10'h2e2;
        4'h9: key <= 10'h144;
    endcase
    end
endmodule

