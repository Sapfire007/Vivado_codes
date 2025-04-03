module tb_comparator_2bit_dataflow;
    reg a1, a0, b1, b0;
    wire x, y, z;

    comparator_2bit_dataflow uut(a1, a0, b1, b0, x, y, z);

    initial 
    begin
        {a1, a0} = 2'b00; {b1, b0} = 2'b00; #5; // A == B
        {a1, a0} = 2'b01; {b1, b0} = 2'b00; #5; // A > B
        {a1, a0} = 2'b10; {b1, b0} = 2'b01; #5; // A > B
        {a1, a0} = 2'b11; {b1, b0} = 2'b10; #5; // A > B
        {a1, a0} = 2'b01; {b1, b0} = 2'b10; #5; // A < B
        {a1, a0} = 2'b10; {b1, b0} = 2'b11; #5; // A < B
        {a1, a0} = 2'b11; {b1, b0} = 2'b11; #5; // A == B
    end
endmodule