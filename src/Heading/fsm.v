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
---  Module Name: fsm -> used in system
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// fsm module
module fsm (
	input        rst ,			// Reset 
	input        clk ,			// Clock
	input 		 req,			// Request
	input        confirm ,		// Confirm value
	input  [7:0] pass_data ,	// Password or data input (8-bit)
	output       en_Q ,		    // Used to save in Q register	
	output       en_P ,		    // Used to save in P register	
	output [6:0] dout,			// Output data (7-bit),
	output [2:0] state			// State output - used in test mode
 );

    // Outputs as registers
	reg en_Q;
	reg en_P;
	reg [6:0] dout;
	// State of machine
	reg [2:0] state;
	// Constant pasword -> defined by factory
	reg [7:0] password;

	// Initialing to default values
	initial begin
		// Default values
		en_Q = 0;
		en_P = 0;
		dout = 0;			
        // initial state
		state = 3'b000; 
		// Defined pasword here -> defined by factory
		password = 8'b00100100;	 		
	end

	// Sequential circuit
	always @(posedge clk or posedge rst or negedge req) begin
        // Reset == 1
		if (rst) begin
			en_Q = 0;
			en_P = 0;
			dout = 0;
			state = 3'b000;
		end
        // Request == 0
		if (~req) begin
			en_Q = 0;
			en_P = 0;
			state = 3'b000;
		end
		else begin
            // State A to B
			if(state == 3'b000) begin
				state = 3'b001;
			end
			else if (state == 3'b001) begin
				if(confirm) begin
                    // B to C
					if(pass_data == password) state = 3'b101;
					// B to E
                    else state = 3'b111;    // State E
				end
			end
            // C to D
			else if (state == 3'b101) begin
				if(confirm) begin
                    // Seting seven bit of input to output
					dout[0] = pass_data[0];
					dout[1] = pass_data[1];
					dout[2] = pass_data[2];
					dout[3] = pass_data[3];
					dout[4] = pass_data[4];
					dout[5] = pass_data[5];
					dout[6] = pass_data[6];
					state = 3'b110;		// State D
					// Saving in Q
					if(pass_data[7]) begin	
						en_P = 0;
						en_Q = 1;
					end
					// Saving in P
					else begin
						en_P = 1;
						en_Q = 0;
					end
				end
			end
		end
	end

endmodule
