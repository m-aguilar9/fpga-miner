module odo_get_round_key6(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h2f8;
        4'h1: key <= 10'h290;
        4'h2: key <= 10'h2cb;
        4'h3: key <= 10'h14c;
        4'h4: key <= 10'h185;
        4'h5: key <= 10'h3c2;
        4'h6: key <= 10'h1ab;
        4'h7: key <= 10'h114;
        4'h8: key <= 10'h10d;
    endcase
    end
endmodule

