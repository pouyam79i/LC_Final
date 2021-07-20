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
---  Module Name: test bench of fsm 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// test bench of fsm
module tb_fsm();
    
    // Inputs
	reg        rst; 			// Reset 
	reg        clk;	    		// Clock
	reg 	   req;			    // Request
	reg        confirm;	    	// Confirm value
	reg  [7:0] pass_data;	    // Password or data input (8-bit)

    // Result container
	wire       en_Q;		    // Used to save in Q register	
	wire       en_P;		    // Used to save in P register	
	wire [6:0] dout;			// Output data (7-bit),
	wire [2:0] state;			// State output - used in test mode

    // unit under test
    fsm uut(rst, clk, req, confirm, pass_data, en_Q, en_P, dout, state);

    // clock generator
    initial begin
        clk = 0;
        forever begin
            #50 clk = ~clk;
        end
    end

    // testing
    initial begin
        rst = 1;
        req = 0;
        confirm = 0;
        pass_data = 0;
        #100;
        req = 1;
        rst = 0;
        #150;
        pass_data = 8'b00100100;
        confirm = 1;
        #50;
        confirm = 0;
        #50;
        pass_data = 8'b10110110;
        confirm = 1;
        #100;
        req = 0;
        #100;
        $finish;
    end

endmodule
