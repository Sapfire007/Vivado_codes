module tb_encoder_8x3;
reg I0,I1,I2,I3,I4,I5,I6,I7;
wire Z0, Z1,Z2;
encoder_8x3 a1(I0,I1,I2,I3,I4,I5,I6,I7,Z0,Z1,Z2);
initial
begin
I0 = 1'b1; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b1; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b1; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b1; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b1; I5 = 1'b0; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b1; I6 = 1'b0; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b1; I7 = 1'b0;
#10
I0 = 1'b0; I1 = 1'b0; I2 = 1'b0; I3 = 1'b0; I4 = 1'b0; I5 = 1'b0; I6 = 1'b0; I7 = 1'b1;
end
endmodule