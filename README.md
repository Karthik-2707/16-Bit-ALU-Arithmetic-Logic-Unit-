# 16-Bit ALU (Arithmetic Logic Unit)

## Overview

This project implements a **16-bit Arithmetic Logic Unit (ALU)** designed to perform basic arithmetic and logical operations on two 16-bit inputs. The ALU is a fundamental component in computer architecture responsible for executing mathematical and logical instructions.

## Features

* 16-bit input operands
* Multiple arithmetic and logical operations
* Control signal based operation selection
* Modular digital design

## Supported Operations

The ALU supports the following operations:

* Addition (A + B)
* Subtraction (A − B)
* Bitwise AND
* Bitwise OR
* Bitwise XOR
* Bitwise NOT

## Inputs

* **A** – 16-bit input operand
* **B** – 16-bit input operand
* **ALU_Sel** – Control signal to select the operation

## Outputs

* **ALU_Out** – 16-bit result of the selected operation
* **CarryOut** – Carry generated during arithmetic operations

## Tools / Technologies

* Verilog HDL
* Digital Logic Design
* Simulation using ModelSim / Vivado (or any Verilog simulator)

## Project Structure

```
16-Bit-ALU-Arithmetic-Logic-Unit
│
├── alu.v          # Verilog code for 16-bit ALU
├── testbench.v    # Testbench for simulation
└── README.md
```

## How to Run

1. Clone the repository
2. Open the project in a Verilog simulator
3. Compile the ALU module and testbench
4. Run the simulation to verify the operations

## Author

Karthik
