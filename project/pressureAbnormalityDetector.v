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
---  Module Name: pressureAbnormalityDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module pressureAbnormalityDetector( 
	input [5:0] pressureData,
	output pressureAbnormality
	);
	
	wire ParityErrorCheckerOutput,PressureAnalyzerOutput;
	
	ParityErrorChecker pec(pressureData,ParityErrorCheckerOutput);
	PressureAnalyzer pa(pressureData[4:0],PressureAnalyzerOutput);
	
	assign pressureAbnormality = ParityErrorCheckerOutput & PressureAnalyzerOutput;

endmodule
