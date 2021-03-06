module D_latch(D,clk,Q,_Q);

input D,clk;
output Q,_Q;
wire S,R;

assign S=~(D&clk);
assign R=~((~D)&clk);
assign Q=~(S&_Q);
assign _Q=~(R&Q);

endmodule