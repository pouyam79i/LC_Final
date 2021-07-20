/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  :     9829039   - 9831007 - 9831059
--  Student Name:     Pouya     - Mehran  - Abolfazl
--  Student Lastname: Mohammadi - Aksari  - Moradi Feijani
--  *******************************************************
--  Additional Comments:a module to add a single bit to a
--  4bit number 
--  for example 1000 + 1 = 1001
--*/

/*-----------------------------------------------------------
---  Module Name: Adder4bit
-----------------------------------------------------------*/
module Adder4bit(
	input [3:0] A ,
	input b ,
	input ci ,
	output [3:0] out ,
	output co
 );
	 
	 wire [2:0] C;
	 supply0 zero;
	 
	 fullAdder adder1(A[0], b, ci, out[0], C[0]);
	 fullAdder adder2(A[1], zero, C[0], out[1], C[1]);
	 fullAdder adder3(A[2], zero, C[1], out[2], C[2]);
	 fullAdder adder4(A[3], zero, C[2], out[3], co);
	
endmodule
