module CADD4(a,b,cin,s,cout,c2);

input [3:0] a,b;
input cin;
output [3:0] s;
output cout,c2;
wire c0,c1;
wire g0,g1,g2,g3,p0,p1,p2,p3;

assign g0=a[0]&b[0];
assign p0=a[0]|b[0];
assign g1=a[1]&b[1];
assign p1=a[1]|b[1];
assign g2=a[2]&b[2];
assign p2=a[2]|b[2];
assign g3=a[3]&b[3];
assign p3=a[3]|b[3];

assign c0=g0|(p0&cin);
assign c1=g1|(p1&g0)|(p1&p0&cin);
assign c2=g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
assign cout=g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);

assign s[0]=(a[0]^b[0])^cin;
assign s[1]=(a[1]^b[1])^c0;
assign s[2]=(a[2]^b[2])^c1;
assign s[3]=(a[3]^b[3])^c2;

endmodule