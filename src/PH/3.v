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
---  Module Name: bloodAbnormalityDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bloodAbnormalityDetector(
 bloodPH,
 bloodType,
 bloodAbnormality);
 
	input [3:0] bloodPH;
	input [2:0] bloodType;
	output bloodAbnormality;
 
	wire bloodClass;    //1 if B or O, 2 if AB or A
	wire abnormalityP;  //abnormality for A and AB blood groups
	wire abnormalityQ;  //abnormality for B and O blood groups
	
	//a module to check abnormalityP and abnormalityQ
	bloodPHAnalyzer analizer(bloodPH, abnormalityP, abnormalityQ);
	
	//a module to specify what is the class of the given blood type
	bloodTypeClassification classification(bloodType, bloodClass);
	
	//input of a 2x1 mux
	wire [1:0] in; 
	
	assign in = {abnormalityQ, abnormalityP};
	
	//if bloodClass is 1, abnormalityQ will be the output, if
	//bloodClass is 0, abnormalityP will be the output
	multiplexer2x1 mux(in, bloodClass, bloodAbnormality);
	 
endmodule
