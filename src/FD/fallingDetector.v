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
---  Module Name: fallingDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module fallingDetector(
   fdSensorValue,
   fdFactoryValue,
   fallDetected
 );

   input [7:0] fdSensorValue;      // First input of comparator
   input [7:0] fdFactoryValue;     // Second input of comparator
   output fallDetected;            // Output of fallDetected sensor
   
   // Container wires
   wire ltContainer;
   wire eqContainer;
   wire gtContainer;

   // 8-bit container module
   comparator_8bit fdComparator(fdSensorValue, fdFactoryValue, 1'b0, 1'b1, 1'b0, ltContainer, eqContainer, gtContainer);

   // result producer
   or result(fallDetected, eqContainer, gtContainer);

endmodule
