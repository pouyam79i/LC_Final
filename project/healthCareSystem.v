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

// Health Care System 
module healthCareSystem(
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

    // Inputs
    input [5:0] pressureData;       // Pressure data
    input [3:0] bloodPH;            // PH of blood
    input [2:0] bloodType;          // Type of blood
    input [7:0] fdSensorValue;      // Falling detector sensor input    
    input [7:0] fdFactoryValue;     // Falling detector factory value (STD)
    input [7:0] bloodSensor;        // Blood sensor
    input [4:0] factotyBaseTemp;    // factory base temp.
    input [3:0] factotyTempCoef;    // factory temp. coef.
    input [3:0] tempSensorValue;    // temp. sensor value

    // Outputs
    output presureAbnormality;      // presureAbnormality result
    output bloodAbnormality;        // bloodAbnormality result
    output fallDetected;            // fallDetected result
    output temperatureAbnormality;  // temperatureAbnormality result
    output [3:0] glycemicIndex;     // glycemicIndex result

    // Module 1 - pressureAbnormalityDetector
    pressureAbnormalityDetector PAD(pressureData, presureAbnormality);

    // Module 2 - bloodAbnormalityDetector
    bloodAbnormalityDetector BAD(bloodPH, bloodType, bloodAbnormality);

    // Module 3 - fallingDetector
    fallingDetector FD(fdSensorValue, fdFactoryValue, fallDetected); 

    // Module 4 - temperatureAbnormalityDetector
    temperatureAbnormalityDetector TAD(factotyBaseTemp, factotyTempCoef, tempSensorValue, temperatureAbnormality);

    // Module 5 - glycemicIndexCalculator
    glycemicIndexCalculator GIC(bloodSensor, glycemicIndex);

endmodule
