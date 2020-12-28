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
// Description: Test bench for blink module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module blink_tb1(

    );
    
    reg clk50;
    reg[3:0] flash_rate;
    wire led_out;
    
    Blink uut (
    .clk(clk50),
    .led(led_out),
    .flash_rate(flash_rate)
    );
    
    integer i;

    
    initial begin
        $display("blink.v test running");
        flash_rate = 3;
         for (i=0; i<=(2**flash_rate)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk50 = 1'b0;
            #100;
            clk50 = 1'b1;
            #100;
            
            ///Test for rising edge at corect clock number
            if(i == (2**flash_rate)-2 && led_out == 1)
                 $display("test FAILED rising edge");
            if(i == 2**flash_rate - 1 && led_out == 1) //check for rising edge on flash_rate bit of the blink.v's internal register
                 $display("test PASSED rising edge");
            if(i == (2**flash_rate)+1 && led_out == 0)
                 $display("test FAILED rising edge");
                 
            ///Test for falling edge at corect clock number
            if(i == (2**flash_rate*2)-2 && led_out == 0)
                 $display("test FAILED falling edge");
            if(i == (2**flash_rate*2) - 1 && led_out == 0) //check for rising edge on flash_rate bit of the blink.v's internal register
                 $display("test PASSED falling edge");
            if(i == (2**flash_rate*2)+1 && led_out == 1)
                 $display("test FAILED falling edge");


            
        end
    end
 

    
endmodule
