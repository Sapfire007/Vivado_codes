module tb_async_up_counter_3bit;
reg clk;
wire [2:0] count;
async_up_counter_3bit a1(clk, count);
initial
    begin
        clk = 1'b0;
    end
    always
        begin
        #5 clk = ~clk;
        end
endmodule 