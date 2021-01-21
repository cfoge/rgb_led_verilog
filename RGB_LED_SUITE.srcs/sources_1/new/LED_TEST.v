`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2021 16:57:18
// Design Name: 
// Module Name: LED_TEST
// Project Name: RGB_LED_SUITE
// Target Devices: Arty A7 20
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


module LED_TEST(
    input sys_clk,
    input sw1,
    input sw2,
    input btn0,
    input btn1,
    input btn2,
    //input [2:0] led0_sel,
   // input [2:0] led1_sel,
    //input [2:0] led2_sel,
   // input [2:0] led3_sel,
    output led0,
    output led1,
    output led2,
    output led3
    
    );
    
    
    wire clk_div_out; 
    wire pwm_out;
    wire blink_slow;
    wire blink_fast;
    
    clk_div clk_div(
     .clk(sys_clk),
     .clk_div(clk_div_out)
    );
   
    led_control led_control(
          .clk(clk_div_out),//should be a sub devided master clock        
         .fade_rate(8'b00000101), // 5 is a good normal speed       
         .fade_mode(sw2),
         .rst(sw1),     
         .led_pwm(pwm_out),//led out  
         .blink_out(blink_fast),
         .blink_out2(blink_slow)
    );
    
   led8_to_1mux led0mux(
         .Sel(2), //on, off, pwm, !pwm, blink slow, ! blinkslow, blink fast, !blink fast
         .pwm(pwm_out),
         .blink1(blink_slow),
         .blink2(blink_fast),
         .Out(led0)
   );
       
   led8_to_1mux led1mux(
         .Sel(3), //on, off, pwm, !pwm, blink slow, ! blinkslow, blink fast, !blink fast
         .pwm(pwm_out),
         .blink1(blink_slow),
         .blink2(blink_fast),
         .Out(led1)
   );
       
   led8_to_1mux led2mux(
         .Sel(4), //on, off, pwm, !pwm, blink slow, ! blinkslow, blink fast, !blink fast
         .pwm(pwm_out),
         .blink1(blink_slow),
         .blink2(blink_fast),
         .Out(led2)
   );
       
   led8_to_1mux led3mux(
         .Sel(5), //on, off, pwm, !pwm, blink slow, ! blinkslow, blink fast, !blink fast
         .pwm(pwm_out),
         .blink1(blink_slow),
         .blink2(blink_fast),
         .Out(led3)
   );
    
    
    
endmodule
