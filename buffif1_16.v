module buffer16(
    input  [15:0] a,
    input  en,
    output [15:0] y
);

bufif1 b0  (y[0],  a[0],  en);
bufif1 b1  (y[1],  a[1],  en);
bufif1 b2  (y[2],  a[2],  en);
bufif1 b3  (y[3],  a[3],  en);
bufif1 b4  (y[4],  a[4],  en);
bufif1 b5  (y[5],  a[5],  en);
bufif1 b6  (y[6],  a[6],  en);
bufif1 b7  (y[7],  a[7],  en);
bufif1 b8  (y[8],  a[8],  en);
bufif1 b9  (y[9],  a[9],  en);
bufif1 b10 (y[10], a[10], en);
bufif1 b11 (y[11], a[11], en);
bufif1 b12 (y[12], a[12], en);
bufif1 b13 (y[13], a[13], en);
bufif1 b14 (y[14], a[14], en);
bufif1 b15 (y[15], a[15], en);

endmodule