`timescale 1ns / 1ps

module alu_tb();
reg [3:0] A,B,opcode;
wire [3:0]result;
wire carry,zero,overflow;
four_bit_alu uut(.A(A),.B(B),.opcode(opcode),.result(result),.carry(carry),.zero(zero),.overflow(overflow));
initial begin
// ADD
A = 4'b0101; B = 4'b0011; opcode = 3'b000; #10;
// overflow 
A = 4'b0111; B = 4'b0001; opcode = 3'b000; #10;  

// SUB
A = 4'b0101; B = 4'b0011; opcode = 3'b001; #10; 
//overflow
A = 4'b1000; B = 4'b0001; opcode = 3'b001; #10; 

// AND operation
A = 4'b1100; B = 4'b1010; opcode = 3'b010; #10;

// OR operation
A = 4'b1100; B = 4'b1010; opcode = 3'b011; #10;  

// XOR operation
A = 4'b1100; B = 4'b1010; opcode = 3'b100; #10;  

// NOT operation
A = 4'b1100; B = 4'b0101; opcode = 3'b101; #10; 

// Shift Left operation
A = 4'b0001; opcode = 3'b110; #10;

// Shift Right operation
A = 4'b1000; opcode = 3'b111; #10;  

// Zero detection
A = 4'b0011; B = 4'b0011; opcode = 3'b001; #10; 
$finish;
end
endmodule
