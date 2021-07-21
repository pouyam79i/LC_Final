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
---  Module Name: test
-----------------------------------------------------------*/

module test;

	// Inputs
	reg [7:0] bloodSensor;

	// Outputs
	wire [3:0] glycemicIndex;

	// Instantiate the Unit Under Test (UUT)
	glycemicIndexCalculator uut (
		.bloodSensor(bloodSensor), 
		.glycemicIndex(glycemicIndex)
	);

	initial begin
		// Initialize Inputs
		bloodSensor = 8'b00000000;
		#100;
      bloodSensor = 8'b10101010;
		#100;
      bloodSensor = 8'b11100011;
		#100;
      bloodSensor = 8'b01010101;
		#100;
      bloodSensor = 8'b11100000;
		#100;
      $finish;
	end
      
endmodule

