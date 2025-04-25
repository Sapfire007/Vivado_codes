module reg_1bit(in, clk, set, clr, out);
    input in, clk, set, clr;
    output reg out;

    always @(posedge clk) begin
        if (clr)
            out <= 1'b0;
        else if (set)
            out <= 1'b1;
        else
            out <= in;
    end
endmodule