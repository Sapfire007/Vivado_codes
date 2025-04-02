module demux_1x8_dataflow(d, s0, s1, s2, y0, y1, y2, y3, y4, y5, y6, y7);
    input d, s0, s1, s2;
    output y0, y1, y2, y3, y4, y5, y6, y7;

    assign y0 = d & ~s2 & ~s1 & ~s0;
    assign y1 = d & ~s2 & ~s1 &  s0;
    assign y2 = d & ~s2 &  s1 & ~s0;
    assign y3 = d & ~s2 &  s1 &  s0;
    assign y4 = d &  s2 & ~s1 & ~s0;
    assign y5 = d &  s2 & ~s1 &  s0;
    assign y6 = d &  s2 &  s1 & ~s0;
    assign y7 = d &  s2 &  s1 &  s0;
    
endmodule