module tb_comparator_4bit_dataflow;
    reg a3, a2, a1, a0, b3, b2, b1, b0;
    wire x, y, z;
    
    // Instantiate the 4-bit comparator module
    comparator_4bit comp(a3, a2, a1, a0, b3, b2, b1, b0, x, y, z);
    
    initial begin
        // Test Case 1: A = 0000, B = 0000 (A == B)
        a3 = 1'b0; a2 = 1'b0; a1 = 1'b0; a0 = 1'b0;
        b3 = 1'b0; b2 = 1'b0; b1 = 1'b0; b0 = 1'b0;
        #5;
        
        // Test Case 2: A = 0101, B = 0011 (A > B)
        a3 = 1'b0; a2 = 1'b1; a1 = 1'b0; a0 = 1'b1;
        b3 = 1'b0; b2 = 1'b0; b1 = 1'b1; b0 = 1'b1;
        #5;
        
        // Test Case 3: A = 0010, B = 1010 (A < B)
        a3 = 1'b0; a2 = 1'b0; a1 = 1'b1; a0 = 1'b0;
        b3 = 1'b1; b2 = 1'b0; b1 = 1'b1; b0 = 1'b0;
        #5;
        
        // Test Case 4: A = 1100, B = 1010 (A > B)
        a3 = 1'b1; a2 = 1'b1; a1 = 1'b0; a0 = 1'b0;
        b3 = 1'b1; b2 = 1'b0; b1 = 1'b1; b0 = 1'b0;
        #5;
        
        // Test Case 5: A = 0111, B = 0111 (A == B)
        a3 = 1'b0; a2 = 1'b1; a1 = 1'b1; a0 = 1'b1;
        b3 = 1'b0; b2 = 1'b1; b1 = 1'b1; b0 = 1'b1;
        #5;
        
    end
endmodule