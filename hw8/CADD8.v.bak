module CADD8(a,b,cin,s,cout,ov);

input [7:0] a,b;
input cin;
output [7:0] s;
output cout,ov;
wire c0,c2,c6;

CADD4 u0(a[3:0],b[3:0],cin,s[3:0],c0,c2);
CADD4 u1(a[7:4],b[7:4],c0,s[7:4],cout,c6);

assign ov=cout^c6;

endmodule