module comparator_4bit_behavioral(a3, a2, a1, a0, b3, b2, b1, b0, x, y, z);
    input a3, a2, a1, a0;
    input b3, b2, b1, b0;
    output reg x, y, z;

    always @(*) begin
        if ({a3, a2, a1, a0} > {b3, b2, b1, b0}) begin
            x = 1;
            y = 0;
            z = 0;
        end 
        else if ({a3, a2, a1, a0} == {b3, b2, b1, b0}) begin
            x = 0;
            y = 1;
            z = 0;
        end 
        else begin
            x = 0;
            y = 0;
            z = 1;
        end
    end
endmodule 