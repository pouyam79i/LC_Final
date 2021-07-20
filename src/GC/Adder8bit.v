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
--  Additional Comments: an 8bit adder (using 8 fullAdders)
--
--*/

/*-----------------------------------------------------------
---  Module Name: Adder8bit
-----------------------------------------------------------*/
module Adder8bit(
	input [7:0] A ,
	input [7:0] B ,
	input ci ,
	output [7:0] out ,
	output co
 );
	 
	 wire [6:0] C;
	 
	 fullAdder adder1(A[0], B[0], ci, out[0], C[0]);
	 fullAdder adder2(A[1], B[1], C[0], out[1], C[1]);
	 fullAdder adder3(A[2], B[2], C[1], out[2], C[2]);
	 fullAdder adder4(A[3], B[3], C[2], out[3], C[3]);
	 fullAdder adder5(A[4], B[4], C[3], out[4], C[4]);
	 fullAdder adder6(A[5], B[5], C[4], out[5], C[5]);
	 fullAdder adder7(A[6], B[6], C[5], out[6], C[6]);
	 fullAdder adder8(A[7], B[7], C[6], out[7], co);
	
endmodule
