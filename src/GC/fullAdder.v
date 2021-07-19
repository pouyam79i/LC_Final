/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831059
--  Student Name: Abolfazl Moradi Feijani
--  Student Mail: abolfazl.moradi.feijani@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Full Adder Gate Level
---  Description: Lab 07 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fullAdder (
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);

	wire x, y, w, z;
	
	
	or (x, a, b);
	and (y, x, ci);
	and (w, a, b);
	xor (s, a, b, ci);
	or (co, w, y);
	
endmodule
