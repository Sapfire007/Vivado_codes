module tb_mux_4x1_behavioral;
    reg i0, i1, i2, i3, s0, s1;
    wire y;

    mux_4x1_behavioral uut(i0, i1, i2, i3, s0, s1, y);

    initial begin
        i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;

        s0 = 1'b0; s1 = 1'b0;
        #5;
        s0 = 1'b0; s1 = 1'b1;
        #5;
        s0 = 1'b1; s1 = 1'b0;
        #5;
        s0 = 1'b1; s1 = 1'b1;
    end
endmodule