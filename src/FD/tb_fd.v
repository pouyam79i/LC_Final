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
---  Module Name: test bench of fallingDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// test bench of fallingDetector
module tb_fd();
    
    // Inputs
    reg [7:0] sensorInput;
    reg [7:0] factoryCode;

    // Result container
    wire result;

    // unit under test
    fallingDetector uut(sensorInput, factoryCode, result);

    initial begin
        factoryCode = 100;
        sensorInput = 50;
        #100
        sensorInput = 100;
        #100
        sensorInput = 101;
        #100
        sensorInput = 99;
        #100
        sensorInput = 150;
        #100
        $finish;
    end

endmodule
