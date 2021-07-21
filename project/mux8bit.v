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
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: multiplexer8bit2x1
-----------------------------------------------------------*/
module multiplexer8bit2x1 (
	input [7:0] A ,
	input [7:0] B ,
	input sel,
	output [7:0] out
);
	
	multiplexer2x1 mux1(A[0], B[0], sel, out[0]);  
	multiplexer2x1 mux2(A[1], B[1], sel, out[1]);  
	multiplexer2x1 mux3(A[2], B[2], sel, out[2]);  
	multiplexer2x1 mux4(A[3], B[3], sel, out[3]);  
	multiplexer2x1 mux5(A[4], B[4], sel, out[4]);  
	multiplexer2x1 mux6(A[5], B[5], sel, out[5]);  
	multiplexer2x1 mux7(A[6], B[6], sel, out[6]);  
	multiplexer2x1 mux8(A[7], B[7], sel, out[7]);  
	
endmodule
