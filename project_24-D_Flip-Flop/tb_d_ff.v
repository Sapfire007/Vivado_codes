module tb_d_ff;

reg d, clk;
wire q, q_bar;

d_ff a1(d, clk, q, q_bar);

initial
begin
    clk = 1'b0;
    d = 1'b1;
    #5; // Wait a little before starting d changes
    #10 d = 1'b0;
    #10 d = 1'b1;
    #10 d = 1'b0;
end

always
begin
    #10 clk = ~clk;
end

endmodule