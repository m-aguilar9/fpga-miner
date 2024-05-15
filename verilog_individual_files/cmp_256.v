//miner.v
`define THROUGHPUT 1000
module cmp_256(clk, in, read, target, out, write);
    input clk;
    input [255:0] in;
    input read;
    input [255:0] target;
    output reg out;
    output reg write;
    
    reg [15:0] greater, less;
    reg progress;
    initial progress = 0;
    initial write = 0;
    
    genvar i;
    generate
    for (i = 0; i < 16; i = i+1)
    begin : loop
        always @(posedge clk)
        begin
            greater[i] <= (in[16*i+15:16*i] > target[16*i+15:16*i]);
            less[i] <= (in[16*i+15:16*i] < target[16*i+15:16*i]);
        end
    end
    endgenerate
    
    always @(posedge clk)
    begin
        out <= (greater < less);
        progress <= read;
        write <= progress;
    end
endmodule