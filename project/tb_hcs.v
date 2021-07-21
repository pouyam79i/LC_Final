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

    // testing
    initial begin
        // initial values 
        pressureData = 6'b000000;
        bloodPH = 4'b0110;
        bloodType = 3'b000;
        fdSensorValue = 10;
        fdFactoryValue = 50;
        bloodSensor = 8'b00000000;
        factotyBaseTemp = 5'b11111; 
        factotyTempCoef = 4'b0100; 
        tempSensorValue = 4'b0100; 
        #100;
        // changing input values - phase 1
        pressureData = 6'b100000;
        bloodPH = 4'b0110;
        bloodType = 3'b100;
        fdSensorValue = 49;
        bloodSensor = 8'b10101010;
        factotyBaseTemp = 5'b11111; 
        factotyTempCoef = 4'b1000; 
        tempSensorValue = 4'b0100;
        #100;
        // changing input values - phase 2
        pressureData = 6'b011111;
        bloodPH = 4'b0111;
        bloodType = 3'b000;
        fdSensorValue = 50;
        bloodSensor = 8'b11100011;
        factotyBaseTemp = 5'b11111; 
        factotyTempCoef = 4'b1100; 
        tempSensorValue = 4'b1101;
        #100;
        // changing input values - phase 3
        pressureData = 6'b111111;
        bloodPH = 4'b0111;
        bloodType = 3'b100;
        fdSensorValue = 51;
        bloodSensor = 8'b01010101;
        factotyBaseTemp = 5'b11001; 
        factotyTempCoef = 4'b1100; 
        tempSensorValue = 4'b0100;
        #100;
        // changing input values - phase 4
        pressureData = 6'b001100;
        bloodPH = 4'b1100;
        bloodType = 3'b000;
        fdSensorValue = 60;
        bloodSensor = 8'b11100000;
        factotyBaseTemp = 5'b11001; 
        factotyTempCoef = 4'b0110; 
        tempSensorValue = 4'b1100;
        #100;
        // changing input values - phase 5
        pressureData = 6'b101100;
        bloodPH = 4'b1100;
        bloodType = 3'b100;
        fdSensorValue = 70;
        bloodSensor = 8'b11100111;
        factotyBaseTemp = 5'b11001; 
        factotyTempCoef = 4'b1000; 
        tempSensorValue = 4'b1100;
        #100;
        $finish;
    end

endmodule
