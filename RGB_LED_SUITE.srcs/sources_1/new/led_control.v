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
        input[7:0] fade_rate,
        input fade_mode,
        input rst,       
        output led_pwm, //the PWM OUT
        output blink_out, //the slow blink out
        output blink_out2 // the fast blink out
    );
    
   
    wire[7:0] fade_ud_count;
    wire blink2fade_ud;
    wire blink1;
    wire blink2;
    wire pwm_out_driver; //output from the PWM module which is gated by the enable input
    
    blink fade_blink_rate (
        .clk(clk),
        .flash_rate(fade_rate),
        .led(blink2fade_ud),
        .fasterx2(blink1),
        .fasterx4(blink2)
    ); 
    
    fade_up_down fade_up_down( //as the clk is driven by the devicer, this crates an issue for the counter being reset
        .clk(blink2fade_ud),
        .rst(rst),
        .mode(fade_mode), //0 = fade up and down, 1 = fade up only
        .out(fade_ud_count)
      
    );
    
    pwm pwm_ch(
         .clk(clk),
         .rst(rst),
        .PWM_in(fade_ud_count),
        .PWM_out(pwm_out_driver)
    );
    
    //assign led_pwm = pwm_out_driver & enable;
    assign led_pwm = pwm_out_driver;
    assign blink_out = blink1;
    assign blink_out2 = blink2;
    
endmodule
