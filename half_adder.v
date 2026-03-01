module half_adder(s,c,a,b);
input a,b;
output s,c;
xor x1(s,a,b);
and x2(c,a,b);
endmodule