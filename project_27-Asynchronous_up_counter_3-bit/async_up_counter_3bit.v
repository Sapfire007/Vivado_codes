module async_up_counter_3bit(clk, count);
input clk;
output [2:0]count;
wire qa, qb, qc, qa_bar, qb_bar, qc_bar;
t_ff t1(clk, 1'b1, qa, qa_bar);
t_ff t2(qa, 1'b1, qb, qb_bar);
t_ff t3(qb, 1'b1, qc, qc_bar);
send s1(qa,qb,qc,count);
endmodule 