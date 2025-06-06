#  4-Bit ALU (Arithmetic Logic Unit) – Verilog HDL
📘 Overview
* This project implements a 4-bit ALU (Arithmetic Logic Unit) using Verilog Hardware Description Language. The ALU performs fundamental arithmetic and logical operations on two 4-bit inputs, making it a critical        component in digital computing systems such as CPUs and microcontrollers.
* The design includes logic for carry detection, zero detection, and signed overflow detection, ensuring accurate interpretation of signed/unsigned operations.
#  Features
# Inputs:
* A [3:0]: 4-bit Operand A
* B [3:0]: 4-bit Operand B
* opcode [3:0]: Selects the operation
# Outputs:
* result [3:0]: 4-bit result of the operation
* carry: Indicates unsigned overflow during addition/subtraction
* zero: Set when result is zero
* overflow: Indicates signed overflow (important for 2’s complement signed operations)

# 🧮 Supported Operations
* Opcode (4'bxxxx)	Operation	Description
* 0000	A + B	  4-bit addition with carry + overflow
* 0001	A - B	  4-bit subtraction with carry + overflow
* 0010	A & B	  Bitwise AND
* 0011	`A	    OR
* 0100	A^B	    Bitwise XOR
* 0101	~A	    Bitwise NOT (only operand A used)
* 0110	A<<1	  Logical left shift (1 bit)
* 0111	A>>1	  Logical right shift (1 bit)
* Others	0000  Default/reset output


