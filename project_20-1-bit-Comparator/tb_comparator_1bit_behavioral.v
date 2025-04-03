module tb_comparator_1bit_behavioral;
    reg a, b;
    wire x, y, z;

    comparator_1bit_behavioral uut(a, b, x, y, z);

    initial 
    begin
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;
    end
endmodule