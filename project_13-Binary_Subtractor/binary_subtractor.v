module binary_subtractor(a,b,bin,difference,bout);
input [3:0]a,b;
input bin;
output [3:0]difference;
output bout;
wire b0, b1, b2;
full_subtractor fs1(a[0],b[0],bin,difference[0],b0);
full_subtractor fs2(a[1],b[1],b0,difference[1],b1);
full_subtractor fs3(a[2],b[2],b1,difference[2],b2);
full_subtractor fs4(a[3],b[3],b2,difference[3],bout);
endmodule 