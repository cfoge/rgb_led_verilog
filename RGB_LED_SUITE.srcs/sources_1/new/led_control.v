`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Robert D Jordan
// 
// Create Date: 28.12.2020 20:43:53
// Design Name: 
// Module Name: led_control
// Project Name: rgb_led_suite
// Target Devices: 
// Tool Versions: 
// Description: 
// single channel led controller with fade and fade speed
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_control(

        input clk,//should be a sub devided master clock 
        input[3:0] fade_rate,
        input fade_mode,
        input rst,
        output led_pwm

    );
    
    wire[7:0] fade_ud_count;
    wire blink2fade_ud;
    
    blink fade_blink_rate (
        .clk(clk),
        .flash_rate(fade_rate),
        .led(blink2fade_ud)
    ); 
    
    fade_up_down fade_up_down(
        .clk(blink2fade_ud),
        .rst(rst),
        .mode(fade_mode), //0 = fade up and down, 1 = fade up only
        .out(fade_ud_count),
        .fade_done_out()
    );
    
    pwm pwm_ch(
         .clk(clk),
         .rst(rst),
        .PWM_in(fade_ud_count),
        .PWM_out(led_pwm)
    );
    
    
endmodule
