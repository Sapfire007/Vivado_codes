module decoder_3x8(I2,I1,I0,Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7);
input I2,I1,I0;
output Z0,Z1,Z2,Z3,Z4,Z5,Z6,Z7;
assign Z0 = (~I2)&(~I1)&(~I0);
assign Z1 = (~I2)&(~I1)&(I0);
assign Z2 = (~I2)&(I1)&(~I0);
assign Z3 = (~I2)&(I1)&(I0);
assign Z4 = (I2)&(~I1)&(~I0);
assign Z5 = (I2)&(~I1)&(I0);
assign Z6 = (I2)&(I1)&(~I0);
assign Z7 = (I2)&(I1)&(I0);
endmodule