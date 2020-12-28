`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 21:10:36
// Design Name: 
// Module Name: led_controal_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_controal_tb(

    );
    
        reg clk,//should be a sub devided master clock 
        reg[3:0] fade_rate,
        reg fade_mode,
        reg rst,
        wire led_pwm
    
    led_controal uut(
        .clk(clk),//should be a sub devided master clock 
        .fade_rate(fade_rate),
        .fade_mode(fade_mode),
        .rst(rst),
        .led_pwm(led_pwm)
    );
    
endmodule
