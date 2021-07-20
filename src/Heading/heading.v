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
---  Module Name: heading
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// heading system
module heading(
    input confirm,     	 	 // confirm key
    input request,     	     // request key
    input clock,  		     // clock input of system -> set to posedge
    input [7:0] inputData,   // input data (8-bit)
    output [6:0] dataP,      // output data of P register (7-bit)
    output [6:0] dataQ       // output data of Q register (7-bit)
 );

	// Wires
	wire en_Q;
	wire en_P;
	wire [6:0] doutFSM;
	wire [2:0] state;    // Used to acknowledge current state (read in test mode)

	// Modules
	fsm fsmModule(1'b0, clock, request, confirm, inputData, en_Q, en_P, doutFSM, state);	
	register regDataP(1'b0, clock, en_P, doutFSM, dataP);
	register regDataQ(1'b0, clock, en_Q, doutFSM, dataQ);				

endmodule
