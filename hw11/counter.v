module counter(reset,bt,led1,led2);
input reset,bt;
output [0:6]led1,led2;
wire [7:0] s;
wire [7:0]s0;
wire cout,over;
wire [7:0]a;
assign a=(reset)?s:8'd0;
SADD u0(a,8'd1,1'b0,s0,cout,over);
latch8 u1(s0,bt,s);
_7Seg v1(s[3:0],led1);
_7Seg v2(s[7:4],led2);
endmodule

module latch8(d,clk,q);
input [7:0] d;
output [7:0]q;
input clk;
_DFF u0(d[0],clk,q[0]);
_DFF u1(d[1],clk,q[1]);
_DFF u2(d[2],clk,q[2]);
_DFF u3(d[3],clk,q[3]);
_DFF u4(d[4],clk,q[4]);
_DFF u5(d[5],clk,q[5]);
_DFF u6(d[6],clk,q[6]);
_DFF u7(d[7],clk,q[7]);
endmodule