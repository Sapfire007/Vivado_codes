module tb_binary_adder;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
binary_adder a1(a,b,cin,sum,cout);
initial
begin
a = 4'b 0000; b = 4'b 0000; cin = 1'b 0;
#5
a = 4'b 0001; b = 4'b 1000; cin = 1'b 0;
#5
a = 4'b 1001; b = 4'b 1100; cin = 1'b 0;
end
endmodule 