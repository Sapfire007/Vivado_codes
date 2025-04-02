module demux_1x8_behavioral(d, s0, s1, s2, y0, y1, y2, y3, y4, y5, y6, y7);
    input d, s0, s1, s2;
    output reg y0, y1, y2, y3, y4, y5, y6, y7;

    always @(*) begin
        // Default all outputs to 0
        y0 = 0; y1 = 0; y2 = 0; y3 = 0; 
        y4 = 0; y5 = 0; y6 = 0; y7 = 0;

        // Set the selected output high
        if (s2 == 0 && s1 == 0 && s0 == 0)
            y0 = d;
        else if (s2 == 0 && s1 == 0 && s0 == 1)
            y1 = d;
        else if (s2 == 0 && s1 == 1 && s0 == 0)
            y2 = d;
        else if (s2 == 0 && s1 == 1 && s0 == 1)
            y3 = d;
        else if (s2 == 1 && s1 == 0 && s0 == 0)
            y4 = d;
        else if (s2 == 1 && s1 == 0 && s0 == 1)
            y5 = d;
        else if (s2 == 1 && s1 == 1 && s0 == 0)
            y6 = d;
        else
            y7 = d;
    end
endmodule
