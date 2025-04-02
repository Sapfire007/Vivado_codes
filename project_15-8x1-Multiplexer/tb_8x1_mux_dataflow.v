module tb_8x1_mux_dataflow;
    reg i0, i1, i2, i3, i4, i5, i6, i7;  // Input signals
    reg s0, s1, s2;                      // Select lines
    wire y;                               // Output signal

    // Instantiate the 8x1 multiplexer module
    mux_8x1_dataflow uut(i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, y);

    initial
    begin
        // Initialize inputs
        i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;
        i4 = 1'b0; i5 = 1'b1; i6 = 1'b0; i7 = 1'b1;

        // Apply test cases for all select line combinations
        s0 = 1'b0; s1 = 1'b0; s2 = 1'b0; #5; // Select i0
        s0 = 1'b0; s1 = 1'b0; s2 = 1'b1; #5; // Select i1
        s0 = 1'b0; s1 = 1'b1; s2 = 1'b0; #5; // Select i2
        s0 = 1'b0; s1 = 1'b1; s2 = 1'b1; #5; // Select i3
        s0 = 1'b1; s1 = 1'b0; s2 = 1'b0; #5; // Select i4
        s0 = 1'b1; s1 = 1'b0; s2 = 1'b1; #5; // Select i5
        s0 = 1'b1; s1 = 1'b1; s2 = 1'b0; #5; // Select i6
        s0 = 1'b1; s1 = 1'b1; s2 = 1'b1; #5; // Select i7
    end
endmodule 