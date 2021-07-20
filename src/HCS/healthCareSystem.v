/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 9829039   - 9831007 - 9831059
--  Student Name: Pouya     - Mehran  - Abolfazl
--  Student Mail: Mohammadi - Aksari  - Moradi Feijani
--  *******************************************************
--  Additional Comments:
--  
--*/

/*-----------------------------------------------------------
---  Module Name: healthCareSystem
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module healthCareSystem(
 pressureData,
 bloodPH,
 bloodType,
 fdSensorValue,
 fdFactoryValue,
 factotyBaseTemp,
 factotyTempCoef,
 tempSensorValue
 presureAbnormality,
 bloodAbnormality,
 fallDetected,
 temperatureAbnormality);
input [5:0] pressureData;
input [3:0] bloodPH;
input [2:0] bloodType;
input [7:0] fdSensorValue;
input [7:0] fdFactoryValue;
input [7:0] bloodSensor;
input [4:0] factotyBaseTemp;
input [3:0] factotyTempCoef;
input [3:0] tempSensorValue;
output presureAbnormality;
output bloodAbnormality;
output fallDetected;
output temperatureAbnormality;
 // write your code here, please.
endmodule
