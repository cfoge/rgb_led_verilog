`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Robert D Jordan
// 
// Create Date: 30.12.2020 15:38:31
// Design Name: 
// Module Name: mux2to1_8bit
// Project Name: RGB_LED_SUITE
// Target Devices: Arty A7 20
// Tool Versions: 
// Description: 
// An 8bit wide 2:1 mux to overide the up/down counter with a direct drive value
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2to1_8bit(
        input select,
        input [7:0] in1,
        input [7:0] in2,
        output [7:0] out
        
    );
    
    // assign one of the inputs to the output based upon select line input
    assign out = select ? in2 : in1;

endmodule
