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
--  	using this module in FD module! -> used to build 8-bit comparator
--*/


/*-----------------------------------------------------------
---  Module Name: temperatureAnalyzer 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module temperatureAnalyzer(
	temperature,
	lowTempAbnormality,
	highTempAbnormality
    );
	
	input [7:0] temperature;
	output lowTempAbnormality;
	output highTempAbnormality;
	
	assign lowTempAbnormality  = (temperature < 8'b00100011);
	assign highTempAbnormality = (temperature > 8'b00100111);
	
endmodule
