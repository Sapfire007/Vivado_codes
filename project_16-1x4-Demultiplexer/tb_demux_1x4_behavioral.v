module tb_demux_1x4_behavioral;
    reg d, s0, s1;
    wire y0, y1, y2, y3;

    demux_1x4_behavioral uut(d, s0, s1, y0, y1, y2, y3);

    initial 
    begin
        
        d = 1'b1; s0 = 1'b0; s1 = 1'b0;
        #5;
        d = 1'b1; s0 = 1'b0; s1 = 1'b1;
        #5;
        d = 1'b1; s0 = 1'b1; s1 = 1'b0;
        #5;
        d = 1'b1; s0 = 1'b1; s1 = 1'b1;
        #5;

        // Apply test cases with d = 0
        d = 1'b0; s0 = 1'b0; s1 = 1'b0;
        #5;
        d = 1'b0; s0 = 1'b0; s1 = 1'b1;
        #5;
        d = 1'b0; s0 = 1'b1; s1 = 1'b0;
        #5;
        d = 1'b0; s0 = 1'b1; s1 = 1'b1;
    end
endmodule