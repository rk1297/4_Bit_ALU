`timescale 1ns / 1ps

module four_bit_alu(result,carry,zero,overflow,A,B,opcode);
input [3:0]A,B;
input [3:0]opcode;
output reg[3:0] result;
output reg carry;
output reg zero;
output reg overflow;

always@(*) begin
carry=0;
overflow=0;
case(opcode)

 4'b0000: begin 
 {carry, result} = A+B;
 overflow = (~A[3] & ~B[3] & result[3]) | (A[3] & B[3] & ~result[3]);
          end

 4'b0001: begin
 {carry, result} = A-B;
 overflow = (~A[3] & B[3] & result[3]) | (A[3] & ~B[3] & ~result[3]);
          end

4'b0010: result = A & B;
4'b0011: result = A | B;
4'b0100: result = A ^ B;
4'b0101: result = ~A;
4'b0110: result = A << 1;
4'b0111: result = A >> 1;
default: result = 4'b0000;
endcase
zero = (result == 4'b0000);
end                
endmodule
