module t_ff(clk,in,out,out_bar);
input clk, in;
output out, out_bar;
reg out, out_bar;
reg qn;
initial
    begin
        qn=0;
    end
    always @(negedge clk)
        begin
            if(in==1)
                begin
                    qn = ~qn;      
                    out = qn;
                    out_bar = ~qn;
                end
            else
                begin
                    out = qn;
                    out_bar = ~qn;
                end
         end
endmodule 