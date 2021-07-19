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
---  Module Name: glycemicIndexCalculator
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module glycemicIndexCalculator(
 bloodSensor,
 glycemicIndex);
input [7:0] bloodSensor;
output [3:0] glycemicIndex;

	wire [7:0] absoluteValue;
	
	//calculate absolute value of bloodSensor
	absoluteCalculator cal(bloodSensor, absoluteValue);
	//count ones of the absoluteValue
	countingOnes count(absoluteValue, glycemicIndex);
	
endmodule
