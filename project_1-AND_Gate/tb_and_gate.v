module tb_and_gate;
reg x,y;
wire z;
and_gate a(x,y,z);
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