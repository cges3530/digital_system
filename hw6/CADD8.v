module CADD8(a,b,cin,s,cout);

input [7:0] a,b;
input cin;
output [7:0] s;
output cout;
wire c0;

CADD4 u0(a[3:0],b[3:0],cin,s[3:0],c0);
CADD4 u1(a[7:4],b[7:4],c0,s[7:4],cout);

endmodule