module tb_binary_subtractor;
reg [3:0]a,b;
reg bin;
wire [3:0]difference;
wire bout;
binary_subtractor s1(a,b,bin,difference,bout);
initial
begin
a = 4'b 0000; b = 4'b 0000; bin = 1'b 1;
#5
a = 4'b 0001; b = 4'b 1000; bin = 1'b 1;
#5
a = 4'b 1010; b = 4'b 1000; bin = 1'b 1;
end
endmodule 