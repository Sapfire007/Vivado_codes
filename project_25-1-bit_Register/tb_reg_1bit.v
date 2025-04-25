module tb_reg_1bit;
reg clk, in, clr, set;
wire out;

reg_1bit r1(clk, in, set, clr, out);
initial 
    begin
        clk = 1'b0; in = 1'b0; clr = 1'b1; set = 1'b0;

        #20 in = 1'b1; clr = 1'b0; set = 1'b0;
        #20 in = 1'b0; clr = 1'b0; set = 1'b0;
        #20 in = 1'b1; clr = 1'b1; set = 1'b0;
        #20 in = 1'b0; clr = 1'b0; set = 1'b1;
    end

always #5 clk = ~clk;
endmodule