module tb_shift_reg_4bit;
reg clk, in;
reg [3:0] clr, set;
wire [3:0] out;
shift_reg_4bit s1(clk, in, clr, set, out);

initial
begin
clk =1'b0; in=1'b0; clr=4'b1111; set=4'b0000;
#40 in=1'b1; clr=4'b0000; set=4'b0000;
#20 in=1'b0; clr=4'b0000; set=4'b0000;
#20 in=1'b1; clr=4'b0000; set=4'b0000;
#20 in=1'b0; clr=4'b0000; set=4'b0000;
#20 in=1'b0; clr=4'b0000; set=4'b0000;
#20 in=1'b1; clr=4'b0000; set=4'b0000;
#20 in=1'b1; clr=4'b1111; set=4'b0000;
#20 in=1'b0; clr=4'b0000; set=4'b0000;
#20 in=1'b1; clr=4'b0000; set=4'b0000;
#20 in=1'b0; clr=4'b0000; set=4'b1111;
end

always
begin
#5 clk = ~clk;
end
endmodule