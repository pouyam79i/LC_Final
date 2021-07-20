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
---  Module Name: Register 7 bit -> used in heading system
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// register
module register (
	input        rst ,		// Reset
	input        clk ,		// Clock
	input        en ,		// Enable
	input  [6:0] din ,		// Data in (7-bit)
	output [6:0] qout		// Data out (7-bit)
);

	// 7-bit register
	reg [6:0] qout;

	// Setting default values
	initial begin
		qout = 0;
	end

	// sequentioal_circuit of 7-bit register
	always @ (posedge clk or posedge rst) begin
		// Reset bits when rst = 1
		if (rst) qout = 7'b0000000;
		// Writes data when en = 1 and rst = 0
		else if (en) qout = din;	 		
	end

endmodule
