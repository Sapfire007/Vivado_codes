module send(a, b, c, out);
input a,b,c;
output [2:0] out;
assign out[0] = a;
assign out[1] = b;
assign out[2] = c;
endmodule 