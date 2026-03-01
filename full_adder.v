module full_adder(A,B,CIN,COUT,SUM);
input A,B,CIN;
output COUT,SUM;
//half_adder(s,c,a,b)
wire c_1, c_2, s_1;

half_adder ha_1(.a(A),.b(B),.c(c_1),.s(s_1));
half_adder ha_2(.a(s_1),.b(CIN),.c(c_2),.s(SUM));
or x1(COUT,c_1,c_2);
endmodule
