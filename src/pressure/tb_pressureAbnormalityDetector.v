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
---  Module Name: tb_pressure 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module tb_pressureAbnormalityDetector();

	// Regs
	reg [5:0] pressureData;
	// Outputs
	wire pressureAbnormality;

	// test bench module
	pressureAbnormalityDetector test_pressureAbnormalityDetector (
		.pressureData(pressureData), .pressureAbnormality(pressureAbnormality)
	); 
	localparam period = 20;
	initial
	
		begin 
		 
		pressureData = 6'b000100;
		#period;
		pressureData = 6'b100100;
		#period;
		pressureData = 6'b001100;
		#period;
		pressureData = 6'b101100;
		#period;
		pressureData = 6'b001101;
		#period;
		pressureData = 6'b101101;
		#period;
		pressureData = 6'b000110;
		#period;
		pressureData = 6'b100110;
		#period;
		pressureData = 6'b010100;
		#period;
		pressureData = 6'b110100;
		#period;
		pressureData = 6'b001110;
		#period;
		pressureData = 6'b101110;
		#period;
		pressureData = 6'b011100;
		#period;
		pressureData = 6'b111100;
		#period;
		pressureData = 6'b001100;
		#period;
		pressureData = 6'b101100;
		#period;
		
		$finish;

	end
      
endmodule
