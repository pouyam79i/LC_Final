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
---  Module Name: temperatureAbnormalityDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module temperatureAbnormalityDetector(
	factotyBaseTemp,
	factotyTempCoef,
	tempSensorValue,
	tempAbnormality,
	);
	
	input [4:0] factotyBaseTemp;
	input [3:0] factotyTempCoef;
	input [3:0] tempSensorValue;
	output tempAbnormality;

	wire lowTempAbnormality;
	wire highTempAbnormality;
	
	wire [7:0] temperature;
	temperatureCalculator tc(factotyBaseTemp, tempSensorValue, factotyTempCoef, temperature);
	temperatureAnalyzer ta(temperature, lowTempAbnormality, highTempAbnormality);

	or result(tempAbnormality, lowTempAbnormality, highTempAbnormality);

endmodule
