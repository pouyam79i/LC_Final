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
---  Module Name: bloodTypeClassification
-----------------------------------------------------------*/
module bloodTypeClassification(
		input [2:0] bloodType,
		output bloodClass
    );

	
	wire [3:0] in;  //input of the 4x1 mux
	wire [1:0] sel; //selector of the 4x1 mux
	supply0 zero;
	supply1 one;
	assign in = {zero, bloodType[2], bloodType[1], bloodType[0]};
	assign sel = {one, zero};  //if in[2] or (bloodType[2]) equals 1 it means it is of type 1,
										//otherwise it is of type 0
	multiplexer4x1 mux(in, sel, bloodClass);
	
endmodule
