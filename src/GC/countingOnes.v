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
---  Module Name: countingOnes
-----------------------------------------------------------*/
module countingOnes(
	input [7:0] in ,
	output [3:0] ones
    );

	wire [3:0] start; //starting number of ones(= 0000)
	wire [3:0] res1;  //result of the 1st addition
	wire [3:0] res2;  //result of the 2nd addition
	wire [3:0] res3;  //result of the 3rd addition
	wire [3:0] res4;  //result of the 4th addition
	wire [3:0] res5;  //result of the 5th addition
	wire [3:0] res6;  //result of the 6th addition
	wire [3:0] res7;  //result of the 7th addition
	
	assign start = {0,0,0,0};

	supply0 zero;
	wire co;
	
	//counting number of ones in a binary number is possible
	//by calculating sum of number's digits
	//for example 10101010 -> ones = 1+0+1+0+1+0+1+0 = 0100
	Adder4bit adder1(start, in[0], zero, res1, co);  //adding 1st digit
	Adder4bit adder2(res1, in[1], zero, res2, co);   //adding 2nd digit
	Adder4bit adder3(res2, in[2], zero, res3, co);   //adding 3rd digit
	Adder4bit adder4(res3, in[3], zero, res4, co);   //adding 4th digit
	Adder4bit adder5(res4, in[4], zero, res5, co);   //adding 5th digit
	Adder4bit adder6(res5, in[5], zero, res6, co);   //adding 6th digit
	Adder4bit adder7(res6, in[6], zero, res7, co);   //adding 7th digit
	Adder4bit adder8(res7, in[7], zero, ones, co);   //adding 8th digit
	
endmodule
