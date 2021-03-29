module Mux_latch(b,s,f);
input b,s;
output f;
Mux2to1 u0(f,b,s,f);
endmodule


module Mux2to1(a,b,s,f);
input a,b,s;
output f;
assign f=(s)?b:a;
endmodule

