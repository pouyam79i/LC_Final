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
---  Module Name: multiplexer2x1
-----------------------------------------------------------*/
module multiplexer2x1_vesion2 (
	input [1:0] in ,
	input sel ,
	output out
);
	
	wire selnot;
	not (selnot, sel);

	wire w1, w0;
	and (w0, selnot, in[0]),
	    (w1, sel, in[1]);
		 
	or (out, w0, w1);  
	
endmodule
