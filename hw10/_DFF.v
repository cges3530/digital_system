module _DFF(D,clk,Q);
input D,clk;
output Q;
wire _Q1,Q1,_Q;

D_latch M(D,clk,Q1,_Q1);
D_latch S(Q1,~clk,Q,_Q);

endmodule