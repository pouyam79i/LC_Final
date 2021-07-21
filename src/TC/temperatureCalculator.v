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
---  Module Name: temperatureCalculator 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module temperatureCalculator(
	factotyBaseTemp,
	tempSensorValue,
	factotyTempCoef,
	temperature);
	
	input [4:0] factotyBaseTemp;
	input [3:0] tempSensorValue;
	input [3:0] factotyTempCoef;
	output [7:0] temperature;
	 
	wire [7:0] p;
	assign p = factotyTempCoef * tempSensorValue;
	assign temperature =  factotyBaseTemp + {3'b000, p [7:3]};
	
endmodule
