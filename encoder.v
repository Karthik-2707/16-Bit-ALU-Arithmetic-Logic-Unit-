module encoder(o,s);
input[1:0] s;
output[3:0] o;
wire w1,w2;
not x0(w1,s[0]);
not x1(w2,s[1]);
and o0(o[0],w1,w2);
and o1(o[1],w1,s[0]);
and o2(o[2],s[1],w2);
and o3(o[3],s[1],s[0]);
endmodule