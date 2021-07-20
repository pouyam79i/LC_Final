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
---  Module Name: bloodPHAnalyzer
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bloodPHAnalyzer(
 bloodPH,
 abnormalityP,
 abnormalityQ);
 
	input [3:0] bloodPH;
	output abnormalityP;
	output abnormalityQ;
	
	wire [15:0] decodedPH; //decoded PH number
	supply1 one;
	
	//receive decoded PH number
	decoder4x16 dec(bloodPH, one, decodedPH); 
	
	//abnormlityP is 1 if PH is not 7 or 8
	nor (abnormalityP, decodedPH[7], decodedPH[8]);
	//abnormlityP is 1 if PH is not 6, 7, 8 or 9
	nor (abnormalityQ, decodedPH[6], decodedPH[7], decodedPH[8], decodedPH[9]);
	
endmodule