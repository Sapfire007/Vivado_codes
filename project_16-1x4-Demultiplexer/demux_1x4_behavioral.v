module demux_1x4_behavioral(d, s0, s1, y0, y1, y2, y3);
    input d, s0, s1;  
    output reg y0, y1, y2, y3;  

    always @(*) begin
        // Default all outputs to 0
        y0 = 0; y1 = 0; y2 = 0; y3 = 0;

        if (s1 == 0 && s0 == 0)
            y0 = d;  // Output to y0
        else if (s1 == 0 && s0 == 1)
            y1 = d;  // Output to y1
        else if (s1 == 1 && s0 == 0)
            y2 = d;  // Output to y2
        else
            y3 = d;  // Output to y3
    end
endmodule 