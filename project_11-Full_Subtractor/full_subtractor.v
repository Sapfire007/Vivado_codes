module full_subtractor(x,y,bin,difference,bout);
input x,y,bin;
output difference,bout;
assign difference = (x^y^bin);
assign bout = ((~x&y)|(bin&(~(x^y))));
endmodule