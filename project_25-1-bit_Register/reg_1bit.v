module reg_1bit(in, clk, set, clr, out);
input in, clk, set, clr;
output out;
reg out;
always @(posedge clk)
    begin 
        if (clr)
            out = 0;
        else if (set)
            out = 1;
        else
            out = in;
    end
endmodule 