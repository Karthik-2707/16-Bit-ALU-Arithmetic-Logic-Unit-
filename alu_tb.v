`timescale 1ns / 1ps

module alu_tb;

reg [15:0] A;
reg [15:0] B;
reg [2:0] ALU_Sel;

wire [15:0] ALU_Out;
wire CarryOut;

// Instantiate ALU
alu uut (
    .A(A),
    .B(B),
    .ALU_Sel(ALU_Sel),
    .ALU_Out(ALU_Out),
    .CarryOut(CarryOut)
);

initial begin

$monitor("Time=%0t A=%h B=%h Sel=%b Out=%h Carry=%b",
         $time, A, B, ALU_Sel, ALU_Out, CarryOut);

A = 16'h000A;
B = 16'h0005;

#10 ALU_Sel = 3'b000;   // ADD
#10 ALU_Sel = 3'b001;   // SUB
#10 ALU_Sel = 3'b010;   // AND
#10 ALU_Sel = 3'b011;   // OR
#10 ALU_Sel = 3'b100;   // NOT

A = 16'h00FF;
B = 16'h000F;

#10 ALU_Sel = 3'b000;   // ADD
#10 ALU_Sel = 3'b010;   // AND
#10 ALU_Sel = 3'b011;   // OR

#10 $finish;

end

endmodule
