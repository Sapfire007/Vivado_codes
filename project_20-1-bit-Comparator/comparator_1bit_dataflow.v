module comparator_1bit_dataflow(a, b, x, y, z);
    input  a, b;      // Declare inputs separately
    output x, y, z;   // Declare outputs separately

    // Gate-level logic assignments
    assign x = a & ~b;   // x = 1 if a > b
    assign y = a ~^ b;   // y = 1 if a == b (XNOR) 
    assign z = ~a & b;   // z = 1 if a < b
endmodule