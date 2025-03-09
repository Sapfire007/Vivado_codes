module tb_half_adder;
reg x,y;
wire sum,carry;
half_adder a(x,y,sum,carry);
initial
begin
x=0; y=0;
#5
x=0; y=1;
#5
x=1; y=0;
#5
x=1; y=1;
end
endmodule 