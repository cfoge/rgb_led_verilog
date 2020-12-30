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
    
        reg clk;//should be a sub devided master clock 
        reg[3:0] fade_rate;
        reg fade_mode;
        reg rst;
        wire led_pwm;
        wire[7:0] counter;
        wire blink_out;
    
    led_control uut(
        .clk(clk),//should be a sub devided master clock 
        .fade_rate(fade_rate),
        .fade_mode(fade_mode),
        .rst(rst),
        .led_pwm(led_pwm),
        .counter(counter),
        .blink_out(blink_out)
    );
    
     integer i;
    
     initial begin
        $display("led_control.v test running");
         rst = 0;
         fade_rate = 1;
         fade_mode = 0;
         clk = 1'b0;
         #100;
         clk = 1'b1;
         #100
        
         rst = 1;
         
         
         #100;
         
          for (i=0; i<=(3900)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk = 1'b0;
            #100;
            clk = 1'b1;
            #100;
        end
         
         
     end
    
endmodule
