module four_bit_parallel_adder(
    input  [3:0] a, b,
    input  cin,
    output cout,
    output [3:0] sum
);

wire w1, w2, w3;

full_adder fa_1(.A(a[0]), .B(b[0]), .CIN(cin), .COUT(w1), .SUM(sum[0]));
full_adder fa_2(.A(a[1]), .B(b[1]), .CIN(w1),  .COUT(w2), .SUM(sum[1]));
full_adder fa_3(.A(a[2]), .B(b[2]), .CIN(w2),  .COUT(w3), .SUM(sum[2]));
full_adder fa_4(.A(a[3]), .B(b[3]), .CIN(w3),  .COUT(cout), .SUM(sum[3]));

endmodule