module tb_demux_1x4_dataflow;
    reg d, s0, s1;
    wire y0, y1, y2, y3;

    demux_1x4_dataflow uut(d, s0, s1, y0, y1, y2, y3);

    initial
    begin
    
        d = 1'b1;

        s0 = 1'b0; s1 = 1'b0;  // Expect y0 = 1, others = 0
        #5;
        s0 = 1'b0; s1 = 1'b1;  // Expect y1 = 1, others = 0
        #5;
        s0 = 1'b1; s1 = 1'b0;  // Expect y2 = 1, others = 0
        #5;
        s0 = 1'b1; s1 = 1'b1;  // Expect y3 = 1, others = 0
        #5;

        d = 1'b0;  // Testing when input is 0 (all outputs should be 0)
        s0 = 1'b0; s1 = 1'b0;
        #5;
        s0 = 1'b0; s1 = 1'b1;
        #5;
        s0 = 1'b1; s1 = 1'b0;
        #5;
        s0 = 1'b1; s1 = 1'b1;
    end
endmodule