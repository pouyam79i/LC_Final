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
module multiplexer2x1 (
	input a ,
	input b ,
	input sel ,
	output out
);
	
	wire selnot;
	
	not (selnot, sel);

	wire w1, w0;
	
	and (w0, selnot, a),
	    (w1, sel, b);
		 
	or (out, w0, w1);  
	
endmodule
