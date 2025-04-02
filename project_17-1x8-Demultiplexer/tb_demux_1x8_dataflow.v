module tb_demux_1x8_dataflow;
    reg d, s0, s1, s2;
    wire y0, y1, y2, y3, y4, y5, y6, y7;

    demux_1x8_dataflow uut(d, s0, s1, s2, y0, y1, y2, y3, y4, y5, y6, y7);

    initial 
    begin
        d = 1'b1; // Set input data to 1

        s2 = 0; s1 = 0; s0 = 0; #5; // Output should be y0
        s2 = 0; s1 = 0; s0 = 1; #5; // Output should be y1
        s2 = 0; s1 = 1; s0 = 0; #5; // Output should be y2
        s2 = 0; s1 = 1; s0 = 1; #5; // Output should be y3
        s2 = 1; s1 = 0; s0 = 0; #5; // Output should be y4
        s2 = 1; s1 = 0; s0 = 1; #5; // Output should be y5
        s2 = 1; s1 = 1; s0 = 0; #5; // Output should be y6
        s2 = 1; s1 = 1; s0 = 1; #5; // Output should be y7
    end
endmodule 