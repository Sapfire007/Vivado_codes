module comparator_2bit_dataflow(a1, a0, b1, b0, x, y, z);
    input a1, a0, b1, b0;
    output x, y, z;

    // x = 1 if A > B
    assign x = (a1 & ~b1) | ((a1 ~^ b1) & (a0 & ~b0));

    // y = 1 if A == B
    assign y = (a1 ~^ b1) & (a0 ~^ b0);

    // z = 1 if A < B
    assign z = (b1 & ~a1) | ((a1 ~^ b1) & (b0 & ~a0));
endmodule 