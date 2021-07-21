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

/* --------------------------------------------------------
---  Module Name: tb_temperatureAbnormalityDetector 
-----------------------------------------------------------*/
`timescale 1ns / 1ns

module tb_temperatureAbnormalityDetector();

	// Regs
	reg [4:0] factotyBaseTemp;
	reg [3:0] factotyTempCoef;
	reg [3:0] tempSensorValue;
	// Outputs
	wire lowTempAbnormality;
	wire highTempAbnormality;


	// test bench module
	temperatureAbnormalityDetector test_temperatureAbnormalityDetector (
		.factotyBaseTemp(factotyBaseTemp), .factotyTempCoef(factotyTempCoef), .tempSensorValue(tempSensorValue), .lowTempAbnormality(lowTempAbnormality), .highTempAbnormality(highTempAbnormality)
	); 

	initial 
		begin 
		
		factotyBaseTemp = 5'b11001; factotyTempCoef = 4'b0100; tempSensorValue = 4'b0101; 
		#100;
		factotyBaseTemp = 5'b11001 ; factotyTempCoef = 4'b1111 ; tempSensorValue = 4'b1111 ; 
		#100;
		factotyBaseTemp = 5'b11001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b11001; factotyTempCoef = 4'b0111; tempSensorValue = 4'b0111; 
		#100;
		factotyBaseTemp = 5'b11001; factotyTempCoef = 4'b0011; tempSensorValue = 4'b0111; 
		#100;
		factotyBaseTemp = 5'b11111; factotyTempCoef = 4'b1000; tempSensorValue = 4'b0111; 
		#100;
		factotyBaseTemp = 5'b11111; factotyTempCoef = 4'b1000; tempSensorValue = 4'b1001; 
		#100;
		factotyBaseTemp = 5'b11111; factotyTempCoef = 4'b1000; tempSensorValue = 4'b1000; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		factotyBaseTemp = 5'b10001; factotyTempCoef = 4'b1111; tempSensorValue = 4'b1111; 
		#100;
		
		
		$finish;

	end
      
endmodule
