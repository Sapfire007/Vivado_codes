module shift_reg_4bit(clk, in, clr, set, out);
input clk, in;
input [3:0] clr, set;
output [3:0] out;
reg_1bit r1(in, clk, set[0], clr[0], out[0]);
reg_1bit r2(out[0], clk, set[1], clr[1], out[1]);
reg_1bit r3(out[1], clk, set[2], clr[2], out[2]);
reg_1bit r4(out[2], clk, set[3], clr[3], out[3]);
endmodule