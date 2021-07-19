/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 9831059
--  Student Name: Abolfazl Moradi Feijani
--  Student Mail: abolfazl.moradi.feijani@gmail.com
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: decoder2x4
-----------------------------------------------------------*/
module decoder2x4 (
	input [1:0] in ,
	input en ,
	output [3:0] dout
);
	
	wire in1not, in0not;
	
	not (in1not, in[1]),
		 (in0not, in[0]);
		 
		 
	and (dout[0], in1not, in0not,en),	 
	    (dout[1], in1not, in[0],en),	 
	    (dout[2], in[1], in0not,en),	 
	    (dout[3], in[1], in[0],en);
		 

endmodule
