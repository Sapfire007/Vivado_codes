module mux_4x1_dataflow(i0,i1,i2,i3,s0,s1,y);
input i0,i1,i2,i3,s0,s1;
output y;
assign y = (~s0 & ~s1 & i0) |  // Select i0 when s1=0, s0=0
               (~s0 &  s1 & i1) |  // Select i1 when s1=0, s0=1
               ( s0 & ~s1 & i2) |  // Select i2 when s1=1, s0=0
               ( s0 &  s1 & i3);   // Select i3 when s1=1, s0=1

endmodule