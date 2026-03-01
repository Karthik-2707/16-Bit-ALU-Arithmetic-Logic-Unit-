module alu16(
    input  [15:0] A, B,
    input  [1:0] sel,
    output [15:0] Y,
    output Cout
);

wire [15:0] and_out;
wire [15:0] or_out;
wire [15:0] add_out;
wire [15:0] sub_out;
wire [15:0] B_inv;

wire c1, c2, c3;
wire s0_n, s1_n;

not n0(s0_n, sel[0]);
not n1(s1_n, sel[1]);

genvar i;

generate
for(i=0; i<16; i=i+1)
begin
    and a1(and_out[i], A[i], B[i]);
    or  o1(or_out[i],  A[i], B[i]);
    not n2(B_inv[i], B[i]);
end
endgenerate

sixteen_bit_parallel_adder ADD1(
    .a(A),
    .b(B),
    .cin(1'b0),
    .cout(c1),
    .sum(add_out)
);

sixteen_bit_parallel_adder SUB1(
    .a(A),
    .b(B_inv),
    .cin(1'b1),
    .cout(c2),
    .sum(sub_out)
);

generate
for(i=0; i<16; i=i+1)
begin
    wire w0, w1, w2, w3;

    and m0(w0, and_out[i], s1_n, s0_n);
    and m1(w1, or_out[i],  s1_n, sel[0]);
    and m2(w2, add_out[i], sel[1], s0_n);
    and m3(w3, sub_out[i], sel[1], sel[0]);
    or  m4(Y[i], w0, w1, w2, w3);
end
endgenerate

wire c_add_sel, c_sub_sel;

and ca(c_add_sel, c1, sel[1], s0_n);
and cs(c_sub_sel, c2, sel[1], sel[0]);
or  co(Cout, c_add_sel, c_sub_sel);

endmodule