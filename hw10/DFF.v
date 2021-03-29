module DFF(D,clk,Q,_Q);
input D,clk;
output Q,_Q;
wire _Q1,Q1;

D_latch M(D,clk,Q1,_Q1);
D_latch S(Q1,~clk,Q,_Q);

endmodule