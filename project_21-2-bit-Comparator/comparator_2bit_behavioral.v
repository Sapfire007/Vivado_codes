module comparator_2bit_behavioral(a1, a0, b1, b0, x, y, z);
    input a1, a0, b1, b0;
    output reg x, y, z;

    always @(*) begin
        if ({a1, a0} > {b1, b0}) begin
            x = 1; y = 0; z = 0;  // A > B
        end
        else if ({a1, a0} == {b1, b0}) begin
            x = 0; y = 1; z = 0;  // A == B
        end
        else begin
            x = 0; y = 0; z = 1;  // A < B
        end
    end
endmodule