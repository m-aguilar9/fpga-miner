module odo_get_round_key8(clk, period, key);
    input clk;
    input [3:0] period;
    output [9:0] key;
    reg [9:0] key;
    always @(posedge clk) begin
    case (period)
        4'h0: key <= 10'h337;
        4'h1: key <= 10'h36e;
        4'h2: key <= 10'h2ab;
        4'h3: key <= 10'h312;
        4'h4: key <= 10'h312;
        4'h5: key <= 10'h010;
        4'h6: key <= 10'h150;
        4'h7: key <= 10'h0a7;
        4'h8: key <= 10'h0c0;
    endcase
    end
endmodule

