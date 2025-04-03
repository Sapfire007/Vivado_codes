module comparator_4bit_dataflow(a3, a2, a1, a0, b3, b2, b1, b0, x, y, z);
    input a3, a2, a1, a0;
    input b3, b2, b1, b0;
    output x, y, z;

    // x is 1 if A > B:
    // Condition breakdown:
    // 1. a3 & ~b3 : A's most significant bit is 1 while B's is 0.
    // 2. (a3 ~^ b3) & (a2 & ~b2) : If a3 equals b3, then A > B if a2 is 1 and b2 is 0.
    // 3. (a3 ~^ b3) & (a2 ~^ b2) & (a1 & ~b1) : If a3 and a2 match, then A > B if a1 is 1 and b1 is 0.
    // 4. (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 & ~b0) : If the upper three bits match, A > B when a0 is 1 and b0 is 0.
    assign x = (a3 & ~b3) | ((a3 ~^ b3) & (a2 & ~b2)) | ((a3 ~^ b3) & (a2 ~^ b2) & (a1 & ~b1)) | ((a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 & ~b0));

    // y is 1 if A == B: all corresponding bits must be equal.
    assign y = (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 ~^ b0);

    // z is 1 if A < B: essentially the inverse of x, built in a similar fashion.
    assign z = (b3 & ~a3) | ((a3 ~^ b3) & (b2 & ~a2)) | ((a3 ~^ b3) & (a2 ~^ b2) & (b1 & ~a1)) | ((a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (b0 & ~a0));
endmodule