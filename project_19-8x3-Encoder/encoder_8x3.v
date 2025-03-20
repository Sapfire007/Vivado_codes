module encoder_8x3(I0,I1,I2,I3,I4,I5,I6,I7,Z0,Z1,Z2);
input I0,I1,I2,I3,I4,I5,I6,I7;
output Z0,Z1,Z2;
assign Z2 = I4|I5|I6|I7;
assign Z1 = I2|I3|I6|I7;
assign Z0 = I1|I3|I5|I7;
endmodule