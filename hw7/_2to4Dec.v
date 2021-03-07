module _2to4Dec(s0,s1,ein,y0,y1,y2,y3); //decorder 2 to 4

input s0,s1,ein;
output y0,y1,y2,y3;

assign y0=(~s0&~s1&ein);
assign y1=(s0&~s1&ein);
assign y2=(~s0&s1&ein);
assign y3=(s0&s1&ein);

endmodule