module tb_not_gate;
reg x;
wire y;
not_gate a(x,y);
initial
begin
x=0;
#5
x=1;
end
endmodule 