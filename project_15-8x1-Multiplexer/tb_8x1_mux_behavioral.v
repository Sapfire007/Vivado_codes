module tb_8x1_mux_behavioral;
    reg i0, i1, i2, i3, i4, i5, i6, i7;
    reg s0, s1, s2;
    wire y;

    mux_8x1_behavioral uut(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);

    initial begin
        // Initialize inputs
        i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;
        i4 = 1'b0; i5 = 1'b1; i6 = 1'b0; i7 = 1'b1;

        // Apply test cases
        s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; #5;
        s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; #5;
        s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; #5;
        s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; #5;
        s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; #5;
        s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; #5;
        s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; #5;
        s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; #5;
    end
endmodule 