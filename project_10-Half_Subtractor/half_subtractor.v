module half_subtractor(x,y,difference,borrow);
input x,y;
output difference,borrow;
assign difference = (x^y);
assign borrow = (~x&y);
endmodule