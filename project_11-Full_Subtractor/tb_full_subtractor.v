module tb_full_subtractor;
reg x,y,bin;
wire difference,bout;
full_subtractor a(x,y,bin,difference,bout);
initial
begin
x=0; y=0; bin=0;
#5
x=0; y=0; bin=1;
#5
x=0; y=1; bin=0;
#5
x=0; y=1; bin=1;
#5
x=1; y=0; bin=0;
#5
x=1; y=0; bin=1;
#5
x=1; y=1; bin=0;
#5
x=1; y=1; bin=1;
end
endmodule