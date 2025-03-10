module tb_full_adder;
reg x,y,cin;
wire sum,cout;
full_adder a(x,y,cin,sum,cout);
initial
begin
x=0; y=0; cin=0;
#5
x=0; y=0; cin=1;
#5
x=0; y=1; cin=0;
#5
x=0; y=1; cin=1;
#5
x=1; y=0; cin=0;
#5
x=1; y=0; cin=1;
#5
x=1; y=1; cin=0;
#5
x=1; y=1; cin=1;
end
endmodule