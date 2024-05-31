module odo_get_round_key0(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h0b5;
        4'h1: key <= 10'h0d3;
        4'h2: key <= 10'h26c;
        4'h3: key <= 10'h1ad;
        4'h4: key <= 10'h360;
        4'h5: key <= 10'h2d4;
        4'h6: key <= 10'h2b2;
        4'h7: key <= 10'h287;
        4'h8: key <= 10'h24f;
        4'h9: key <= 10'h360;
    endcase
    end
endmodule

