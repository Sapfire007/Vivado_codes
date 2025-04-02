module tb_demux_1x8_behavioral;
    reg d, s0, s1, s2;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    // Instantiate the Behavioral Demultiplexer module
    demux_1x8_behavioral uut(d, s0, s1, s2, y0, y1, y2, y3, y4, y5, y6, y7);

    initial begin
        d = 1'b1; // Set input data to 1

        s2 = 0; s1 = 0; s0 = 0; #5; // y0 should be active
        s2 = 0; s1 = 0; s0 = 1; #5; // y1 should be active
        s2 = 0; s1 = 1; s0 = 0; #5; // y2 should be active
        s2 = 0; s1 = 1; s0 = 1; #5; // y3 should be active
        s2 = 1; s1 = 0; s0 = 0; #5; // y4 should be active
        s2 = 1; s1 = 0; s0 = 1; #5; // y5 should be active
        s2 = 1; s1 = 1; s0 = 0; #5; // y6 should be active
        s2 = 1; s1 = 1; s0 = 1; #5; // y7 should be active
    end
endmodule