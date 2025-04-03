module tb_comparator_4bit_behavioral;
    reg a3, a2, a1, a0;
    reg b3, b2, b1, b0;
    wire x, y, z;

    comparator_4bit_behavioral uut(a3, a2, a1, a0, b3, b2, b1, b0, x, y, z);

    initial
    begin 
        {a3, a2, a1, a0} = 4'b0000; {b3, b2, b1, b0} = 4'b0000; #5; // A == B
        {a3, a2, a1, a0} = 4'b1001; {b3, b2, b1, b0} = 4'b0110; #5; // A > B
        {a3, a2, a1, a0} = 4'b0101; {b3, b2, b1, b0} = 4'b1010; #5; // A < B
        {a3, a2, a1, a0} = 4'b1111; {b3, b2, b1, b0} = 4'b1111; #5; // A == B
        {a3, a2, a1, a0} = 4'b0001; {b3, b2, b1, b0} = 4'b0010; #5; // A < B
        {a3, a2, a1, a0} = 4'b1010; {b3, b2, b1, b0} = 4'b0101; #5; // A > B
    end
endmodule
