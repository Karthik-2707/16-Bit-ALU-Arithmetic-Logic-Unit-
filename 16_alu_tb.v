`timescale 1ns/1ps

module alu16_tb;

reg  [15:0] A, B;
reg  [1:0] sel;
wire [15:0] Y;
wire Cout;

alu16 uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .Cout(Cout)
);

initial
begin

A = 16'h0005; B = 16'h0003; sel = 2'b00;
#10;

A = 16'h0005; B = 16'h0003; sel = 2'b01;
#10;

A = 16'h0005; B = 16'h0003; sel = 2'b10;
#10;

A = 16'h0005; B = 16'h0003; sel = 2'b11;
#10;

A = 16'h00FF; B = 16'h0001; sel = 2'b10;
#10;

A = 16'h0000; B = 16'h0001; sel = 2'b11;
#10;

$stop;

end

endmodule