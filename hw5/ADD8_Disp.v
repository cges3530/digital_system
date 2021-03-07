module ADD8_Disp(a,b,cin,led1,led2,cout);  //加法器8bit 用七段顯示器顯示

input [7:0] a,b;
input cin;
output [0:6] led1,led2;
output cout;
wire [7:0] s;

ADD8 u0(a,b,cin,s,cout);
_7Seg u1(s[3:0],led1);
_7Seg u2(s[7:4],led2);

endmodule

module ADD8(a,b,cin,s,cout); //加法器8bit

input [7:0] a,b;
input cin;
output [7:0] s;
output cout;
wire c0;

ADD4 u0(a[3:0],b[3:0],cin,s[3:0],c0);
ADD4 u1(a[7:4],b[7:4],c0,s[7:4],cout);

endmodule

module ADD4(a,b,cin,s,cout); //加法器4bit

input [3:0] a,b;
input cin;
output [3:0] s;
output cout ;
wire c0,c1,c2;

FADD u0(a[0],b[0],cin,s[0],c0);
FADD u1(a[1],b[1],c0,s[1],c1);
FADD u2(a[2],b[2],c1,s[2],c2);
FADD u3(a[3],b[3],c2,s[3],cout);

endmodule

module FADD(a,b,cin,s,cout);//全加器

input a,b,cin;
output s,cout;

assign s=(a^b)^cin;
assign cout=(a&b)|(b&cin)|(a&cin);

endmodule

module _7Seg(S, led); //七段顯示器
input 	[3:0]	S;
output	[0:6]	led;
reg		[0:6]	led;
always@(S)
begin
	case(S)
	 	4'b0000:led = 7'b0000001;	//0
	 	4'b0001:led = 7'b1001111;	//1
	 	4'b0010:led = 7'b0010010;	//2
	 	4'b0011:led = 7'b0000110;	//3
	 	4'b0100:led = 7'b1001100;	//4
	 	4'b0101:led = 7'b0100100;	//5
	 	4'b0110:led = 7'b0100000;	//6
	 	4'b0111:led = 7'b0001101;	//7
		4'b1000:led = 7'b0000000;	//8
		4'b1001:led = 7'b0000100;	//9
		4'b1010:led = 7'b0001000;	//A
		4'b1011:led = 7'b1100000;	//b
		4'b1100:led = 7'b0110001;	//C
		4'b1101:led = 7'b1000010;	//d
		4'b1110:led = 7'b0110000;	//E
		4'b1111:led = 7'b0111000;	//F
	endcase
end
endmodule
