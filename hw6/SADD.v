module SADD(a,b,op,s,cout); //¥[´îªk¾¹

input [7:0] a,b;
input op;
output cout;
output [7:0]s;
//output [0:6] led1,led2;
wire [7:0] _b;
wire [7:0] s;

assign _b=(op)?~b:b;
CADD8 v0(a,_b,op,s,cout);
//_7Seg v1(s[3:0],led1);
//_7Seg v2(s[7:4],led2);

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
endmodule