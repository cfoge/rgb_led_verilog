`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2021 16:57:18
// Design Name: 
// Module Name: LED_TEST
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


module LED_TEST(
    input sys_clk,
    input sw1,
    input sw2,
    input btn0,
    output led0,
    output led1
    );
    
    wire clk_div_out; 
    
    clk_div clk_div(
     .clk(sys_clk),
     .clk_div(clk_div_out)
    );
   
    led_control led_control(
          .clk(clk_div_out),//should be a sub devided master clock 
         .enable(1'b1),
         .fade_rate(8'b1111111),
         .fade_or_direct_drive(btn0),// 0 = fade, 1 = direct drivee
         .fade_mode(sw2),
         .rst(sw1),
         .direct_drive(100),
         .led_pwm(led0),//led out
         .pwm_value(),
         .blink_out(),
         .blink_out2(led1)
    );
    
endmodule
