module SADD(a,b,op,s,cout,over);

input [7:0] a,b;
input op;
output cout,over;

wire [7:0] _b;
output [7:0] s;

assign _b=(op)?~b:b;

CADD8 v0(a,_b,op,s,cout,over);


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
endmodule