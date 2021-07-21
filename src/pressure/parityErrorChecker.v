/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 9829039   - 9831007 - 9831059
--  Student Name: Pouya     - Mehran  - Abolfazl
--  Last Name:    Mohammadi - Aksari  - Moradi Feijani
--  *******************************************************
--  Additional Comments:
--  	
--*/

/*-----------------------------------------------------------
---  Module Name: parityErrorChecker 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module ParityErrorChecker(
	input [5:0] Data, 
	output notError
	); 
	// this is a function that check add parity with xor
	assign notError = (Data[0] ^ Data[1] ^ Data[2] ^ Data[3] ^ Data[4] ^ Data[5]);	
endmodule
