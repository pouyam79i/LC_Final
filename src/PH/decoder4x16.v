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
---  Module Name: decoder4x16
-----------------------------------------------------------*/
module decoder4x16 (
	input [3:0] in ,
	input 		en ,
	output [15:0] dout
);
	wire [3:0] w;
	decoder2x4 dec0(in[3:2], en, w);
	
	decoder2x4	dec1(in[1:0], w[0], dout[3:0]),
					dec2(in[1:0], w[1], dout[7:4]),
					dec3(in[1:0], w[2], dout[11:8]),
					dec4(in[1:0], w[3], dout[15:12]);

endmodule