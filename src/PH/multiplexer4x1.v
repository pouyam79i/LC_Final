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
---  Module Name: multiplexer4x1
-----------------------------------------------------------*/
module multiplexer4x1 (
	input [3:0] in ,
	input [1:0]	sel ,
	output out
);
	
	wire sel0not, sel1not;
	
	not (sel0not, sel[0]);
	not (sel1not, sel[1]);
	
	wire w3,w2,w1,w0;
	
	and (w0, sel1not, sel0not, in[0]),
	    (w1, sel1not, sel[0], in[1]),
	    (w2, sel[1], sel0not, in[2]),
	    (w3, sel[1], sel[0], in[3]);
		 
	or (out, w0, w1, w2, w3); 
	
endmodule