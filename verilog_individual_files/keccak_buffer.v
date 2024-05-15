// keccak800.v

module keccak_buffer(clk, statein, keyin, stateout, keyout);
    input clk;
    input [799:0] statein;
    input [7:0] keyin;
    output reg [799:0] stateout;
    output reg [7:0] keyout;
    
    always @(posedge clk)
    begin
        stateout <= statein;
        keyout <= keyin;
    end
endmodule