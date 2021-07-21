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
---  Module Name: test bench of heading system
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// test bench of heading system
module tb_heading();
    
    // Inputs
    reg confirm;     // confirm key
    reg request;     // request key
    reg clock;       // clock input of system -> set to posedge
    reg [7:0] inputData;   // input data (8-bit)

    // Result container
    wire [6:0] dataP;      // output data of P register (7-bit)
    wire [6:0] dataQ;      // output data of Q register (7-bit)

    // unit under test
    heading uut(confirm, request, clock, inputData, dataP, dataQ);

    // clock generator
    initial begin
        clock = 0;
        forever begin
            #50 clock = ~clock;
        end
    end

    // testing
    initial begin
        inputData = 0;
        request = 0;
        confirm = 0;
        #100;
        request = 1;
        #100;
        inputData = 8'b00100100;		
        confirm = 1;
        #100;
        confirm = 0;
        #100;
        confirm = 1;
        inputData = 8'b00101110;	
        #200;
        request = 0;
        #100;
        $finish;
    end

endmodule
