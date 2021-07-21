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
--  Additional Comments: this module claculates absolute value,
--  of a 8bit binary number
--
--*/

/*-----------------------------------------------------------
---  Module Name: absoluteCalculator
-----------------------------------------------------------*/
module absoluteCalculator(
	input [7:0] in,
	output [7:0] out
);

	wire [7:0] twosCompliment;
	
	//a 8bit one
	wire [7:0] one;  
	assign one = {0,0,0,0,0,0,0,1};
	
	//compliment not of the in[7:0]
	wire[7:0] compliment;  
	
	not (compliment[0], in[0]),
	    (compliment[1], in[1]),
	    (compliment[2], in[2]),
	    (compliment[3], in[3]),
	    (compliment[4], in[4]),
	    (compliment[5], in[5]),
	    (compliment[6], in[6]),
	    (compliment[7], in[7]);
		 
	supply0 ci;
	wire co;
	
	//add 00000001 to the compliment to get twosCompliment
	Adder8bit adder(compliment, one, ci, twosCompliment, co);
	
	//if in[7] is 0, absolute value for in is in itself
	//if in[7] is 1, it means the in is a negetive number so
	//its absolute value would be its twosCompliment
	multiplexer8bit2x1 mux(in, twosCompliment, in[7], out);

endmodule
