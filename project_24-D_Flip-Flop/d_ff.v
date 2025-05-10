module d_ff(d, clk, q, q_bar);
    input d, clk;
    output q, q_bar;
    reg q, q_bar;

    initial 
    begin
        q = 1'b0;
        q_bar = 1'b1;
    end

    always @(posedge clk) 
    begin
        q <= d;
        q_bar <= ~d;
    end
endmodule