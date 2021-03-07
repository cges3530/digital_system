module _4to16Dec(w0,w1,w2,w3,en,y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15); //decoder 4 to 16

input w0,w1,w2,w3,en;
output y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15;
wire a1,a2,a3,a4;

_2to4Dec u0(w2,w3,en,a1,a2,a3,a4);

_2to4Dec u1(w0,w1,a1,y0,y1,y2,y3);
_2to4Dec u2(w0,w1,a2,y4,y5,y6,y7);
_2to4Dec u3(w0,w1,a3,y8,y9,y10,y11);
_2to4Dec u4(w0,w1,a4,y12,y13,y14,y15);

endmodule