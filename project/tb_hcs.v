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
---  Module Name: test bench of  healthCareSystem
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

// test bench of healthCareSystem
module tb_hcs();
    
    // Inputs
    reg [5:0] pressureData;       // Pressure data
    reg [3:0] bloodPH;            // PH of blood
    reg [2:0] bloodType;          // Type of blood
    reg [7:0] fdSensorValue;      // Falling detector sensor input    
    reg [7:0] fdFactoryValue;     // Falling detector factory value (STD)
    reg [7:0] bloodSensor;        // Blood sensor
    reg [4:0] factotyBaseTemp;    // factory base temp.
    reg [3:0] factotyTempCoef;    // factory temp. coef.
    reg [3:0] tempSensorValue;    // temp. sensor value

    // Outputs
    wire presureAbnormality;      // presureAbnormality result
    wire bloodAbnormality;        // bloodAbnormality result
    wire fallDetected;            // fallDetected result
    wire temperatureAbnormality;  // temperatureAbnormality result
    wire [3:0] glycemicIndex;     // glycemicIndex result

    // unit under test (uut)
    healthCareSystem uut(
        pressureData,
        bloodPH,
        bloodType,
        fdSensorValue,
        fdFactoryValue,
        bloodSensor,
        factotyBaseTemp,
        factotyTempCoef,
        tempSensorValue,
        presureAbnormality,
        bloodAbnormality,
        fallDetected,
        temperatureAbnormality,
        glycemicIndex
    );

    initial begin


        $finish;
    end

endmodule
