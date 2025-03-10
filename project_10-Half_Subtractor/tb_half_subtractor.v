module tb_half_subtractor;
reg x,y;
wire difference,borrow;
half_subtractor a(x,y,difference,borrow);
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