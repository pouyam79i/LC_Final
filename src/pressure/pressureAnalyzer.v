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
--  	
--*/

/*-----------------------------------------------------------
---  Module Name: pressureAnalyzer 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
	
module PressureAnalyzer(
	input [4:0] pData,
	output pWarning
	);
	//this is a function based on attached karno table to see which data is abnormal
	assign pWarning = ~( (~pData[4] & pData[3]) | (pData[4] & ~pData[3] & ~pData[2]) | (pData[4] & ~pData[3] & ~pData[1]) | (pData[4] & ~pData[3] & ~pData[0]));
endmodule
	
