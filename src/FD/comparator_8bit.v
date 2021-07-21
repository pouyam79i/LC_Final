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
--  	using this module in FD module!
--*/

/*-----------------------------------------------------------
---  Module Name: 8 Bits Comparator
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// 8_bit comparator
module comparator_8bit (
	input [7:0] A ,		// First input
	input [7:0] B ,		// Second input
	input 		l ,		// A < B will be set to output
	input 		e ,		// let this module decide
	input 		g ,		// A > B will be set to output
	output 		lt ,	// A < B
	output 		et ,	// A == B
	output 		gt		// A > B
);

	// wires
	wire l1,l2,e1,e2,g1,g2;
	wire [2:0] inA,inB;

	// assignment of wires
	assign inA[1:0] = A[7:6];
	assign inB[1:0] = B[7:6];
	assign inA[2] = 1'b0;
	assign inB[2] = 1'b0;

	// Combining 3-bit comapators
	comparator_3bit com1(A[2:0],B[2:0],l,e,g,l1,e1,g1);
	comparator_3bit com2(A[5:3],B[5:3],l1,e1,g1,l2,e2,g2);
	comparator_3bit	com3(inA[2:0],inB[2:0],l2,e2,g2,lt,et,gt);
	
endmodule
