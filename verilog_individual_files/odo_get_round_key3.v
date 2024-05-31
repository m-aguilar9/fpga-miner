module odo_get_round_key3(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h02b;
        4'h1: key <= 10'h1e1;
        4'h2: key <= 10'h340;
        4'h3: key <= 10'h3c7;
        4'h4: key <= 10'h0a6;
        4'h5: key <= 10'h0b2;
        4'h6: key <= 10'h223;
        4'h7: key <= 10'h2fb;
        4'h8: key <= 10'h3d7;
    endcase
    end
endmodule

