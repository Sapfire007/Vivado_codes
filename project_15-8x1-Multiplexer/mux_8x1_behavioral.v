module mux_8x1_behavioral(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);
    input wire i0, i1, i2, i3, i4, i5, i6, i7; // Data inputs
    input wire s0, s1, s2;                    // Select lines
    output reg y;                              // Output

    always @(*) begin
        if (s2 == 0 && s1 == 0 && s0 == 0)
            y = i0;
        else if (s2 == 0 && s1 == 0 && s0 == 1)
            y = i1;
        else if (s2 == 0 && s1 == 1 && s0 == 0)
            y = i2;
        else if (s2 == 0 && s1 == 1 && s0 == 1)
            y = i3;
        else if (s2 == 1 && s1 == 0 && s0 == 0)
            y = i4;
        else if (s2 == 1 && s1 == 0 && s0 == 1)
            y = i5;
        else if (s2 == 1 && s1 == 1 && s0 == 0)
            y = i6;
        else 
            y = i7;  // When s2=1, s1=1, s0=1
    end
endmodule 