module demux_1x4_dataflow(d, s0, s1, y0, y1, y2, y3);
    input d, s0, s1;
    output y0, y1, y2, y3;

    assign y0 = (~s0 & ~s1) & d;  // Select y0 when s1=0, s0=0
    assign y1 = (~s0 &  s1) & d;  // Select y1 when s1=0, s0=1
    assign y2 = ( s0 & ~s1) & d;  // Select y2 when s1=1, s0=0
    assign y3 = ( s0 &  s1) & d;  // Select y3 when s1=1, s0=1

endmodule 