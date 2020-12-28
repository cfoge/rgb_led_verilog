`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2020 16:55:40
// Design Name: 
// Module Name: pwm_tb
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


module pwm_tb(

    );
    
    reg clk;
    reg rst;
    reg[7:0] PWM_in;
    wire[7:0] cnt_out;
    wire PWM_out;
    
    
    pwm uut (
    .clk(clk),
    .rst(rst),
    .PWM_in(PWM_in),
    .PWM_out(PWM_out),
    .cnt_out(cnt_out)
    );
    
    integer i;
    
     initial begin
        $display("pwm.v test running");
         rst = 0;
         clk = 1'b0;
         #100;
         clk = 1'b1;
         #100
         rst = 1;
         
         #100
         PWM_in = 8'b10011111;
         for (i=0; i<=(500)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk = 1'b0;
            #100;
            clk = 1'b1;
            #100;
        end
         PWM_in = 8'b00000011;
         for (i=0; i<=(500)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk = 1'b0;
            #100;
            clk = 1'b1;
            #100;
         end   
         PWM_in = 8'b11000011;
         for (i=0; i<=(500)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk = 1'b0;
            #100;
            clk = 1'b1;
            #100;
         end   


            
     
    end
    
endmodule
