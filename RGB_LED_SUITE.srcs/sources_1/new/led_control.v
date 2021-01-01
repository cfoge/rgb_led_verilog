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
        input enable,
        input[3:0] fade_rate,
        input fade_or_direct_drive,// 0 = fade, 1 = direct drivee
        input fade_mode,
        input rst,
        input [7:0] direct_drive,
        output led_pwm,
        output[7:0] counter,
        output blink_out
    );
    
    
    wire[7:0] fade_ud_count;
    wire[7:0] fade_direct_drive_muxout;
    wire blink2fade_ud;
    wire pwm_out_driver; //output from the PWM module which is gated by the enable input
    
    mux2to1_8bit fade_direct_mux(
        .select(fade_or_direct_drive),
        .in1(fade_ud_count),
        .in2(direct_drive),
        .out(fade_direct_drive_muxout)
    );
    
    blink fade_blink_rate (
        .clk(clk),
        .flash_rate(fade_rate),
        .led(blink2fade_ud)
    ); 
    
    fade_up_down fade_up_down( //as the clk is driven by the devicer, this crates an issue for the counter being reset
        .clk(blink2fade_ud),
        .rst(rst),
        .mode(fade_mode), //0 = fade up and down, 1 = fade up only
        .out(fade_ud_count),
        .fade_done_out()
    );
    
    pwm pwm_ch(
         .clk(clk),
         .rst(rst),
        .PWM_in(fade_direct_drive_muxout),
        .PWM_out(pwm_out_driver)
    );
    
    assign led_pwm = pwm_out_driver & enable;
    assign counter = fade_ud_count;
    assign blink_out = blink2fade_ud;
endmodule
