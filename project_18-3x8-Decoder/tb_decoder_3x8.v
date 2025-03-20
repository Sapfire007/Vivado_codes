module tb_decoder_3x8;
reg I2,I1,I0;
wire Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
decoder_3x8 a1(I2,I1,I0,Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7);
initial
begin 
I2 = 1'b0; I1 = 1'b0; I0 = 1'b0;
#10 
I2 = 1'b0; I1 = 1'b0; I0 = 1'b1;
#10 
I2 = 1'b0; I1 = 1'b1; I0 = 1'b0;
#10 
I2 = 1'b0; I1 = 1'b1; I0 = 1'b1;
#10 
I2 = 1'b1; I1 = 1'b0; I0 = 1'b0;
#10 
I2 = 1'b1; I1 = 1'b0; I0 = 1'b1;
#10
I2 = 1'b1; I1 = 1'b1; I0 = 1'b0;
#10 
I2 = 1'b1; I1 = 1'b1; I0 = 1'b1;
end
endmodule