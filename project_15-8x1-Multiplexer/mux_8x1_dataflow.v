module mux_8x1_dataflow(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);
    input i0, i1, i2, i3, i4, i5, i6, i7;  // 8 input lines
    input s0, s1, s2;                      // 3 selection lines
    output y;                               // Output line

    assign y = (~s2 & ~s1 & ~s0 & i0) |  // Select i0 when s2=0, s1=0, s0=0
               (~s2 & ~s1 &  s0 & i1) |  // Select i1 when s2=0, s1=0, s0=1
               (~s2 &  s1 & ~s0 & i2) |  // Select i2 when s2=0, s1=1, s0=0
               (~s2 &  s1 &  s0 & i3) |  // Select i3 when s2=0, s1=1, s0=1
               ( s2 & ~s1 & ~s0 & i4) |  // Select i4 when s2=1, s1=0, s0=0
               ( s2 & ~s1 &  s0 & i5) |  // Select i5 when s2=1, s1=0, s0=1
               ( s2 &  s1 & ~s0 & i6) |  // Select i6 when s2=1, s1=1, s0=0
               ( s2 &  s1 &  s0 & i7);   // Select i7 when s2=1, s1=1, s0=1
endmodule 