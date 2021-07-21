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
---  Module Name: test bench of register
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// test bench of register
module tb_register();
    
    // Inputs
	reg rst;
	reg clk;
	reg en;
	reg [6:0] din;

    // Result container
	wire [6:0] qout;

    // unit under test
    register uut(rst, clk, en, din, qout);

    // clock generator
    initial begin
        clk = 0;
        forever begin
            #50 clk = ~clk;
        end
    end

    // testing
    initial begin
        en = 0;
        din = 5;
        rst = 1;
        #100;
        din = 10;
        en = 1;
        #100;
        en = 0;
        rst = 0;
        #100;
        en = 1;
        din = 15;
        #100;
        din = 30;
        #100;
        en = 0;
        din = 7;
        #100;
        din = 0;
        #100;
        $finish;
    end

endmodule
