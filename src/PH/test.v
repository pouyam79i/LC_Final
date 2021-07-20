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
--  Additional Comments: testbench for module 
--  bloodAbnormalityDetector
--
--*/

/*-----------------------------------------------------------
---  Module Name: test
-----------------------------------------------------------*/

module test;

	// Inputs
	reg [3:0] bloodPH;
	reg [2:0] bloodType;

	// Outputs
	wire bloodAbnormality;

	// Instantiate the Unit Under Test (UUT)
	bloodAbnormalityDetector uut (
		.bloodPH(bloodPH), 
		.bloodType(bloodType), 
		.bloodAbnormality(bloodAbnormality)
	);

	initial begin
		// Initialize Inputs
		bloodPH = 4'b0010;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b0010;
		bloodType = 3'b100;
		#50;
		bloodPH = 4'b0110;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b0110;
		bloodType = 3'b100;
		#50;
		bloodPH = 4'b0111;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b0111;
		bloodType = 3'b100;
		#50;
		bloodPH = 4'b1000;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b1000;
		bloodType = 3'b100;
		#50;
		bloodPH = 4'b1001;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b1001;
		bloodType = 3'b100;
		#50;
		bloodPH = 4'b1010;
		bloodType = 3'b000;
		#50;
      bloodPH = 4'b1010;
		bloodType = 3'b100;
		#50;
		$finish;
	end
      
endmodule

