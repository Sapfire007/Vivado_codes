module jk_ff(j, k, clk, q, q_bar);
    input j, k, clk;
    output q, q_bar;
    reg qn, q, q_bar;

    initial begin
        q = 0;
        q_bar = 1;
    end

    always @(posedge clk) 
    begin
        if (j == 0 && k == 0)
            qn = q;
        else if (j == 0 && k == 1)
            qn = 0;
        else if (j == 1 && k == 0)
            qn = 1;
        else
            qn = ~q;

        q = qn;
        q_bar = ~qn;
    end
endmodule 