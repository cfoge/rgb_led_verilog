`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: RDJordan
// 
// Create Date: 24.12.2020 13:47:50
// Design Name: 
// Module Name: blink
// Project Name: RGB_LED_SUITE
// Target Devices: Arty A7 20
// Tool Versions: 
// Description: 
// A module designed to blink an LED or act as a slow gating fdunction to a larger LED module
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Blink(
    input clk,
    input[3:0] flash_rate,
    output led
    );
    
   
    
    reg [3:0] count = 0;
    
    assign led = count[flash_rate];
    
    always @ (posedge(clk)) count <= count +1;
    
endmodule
