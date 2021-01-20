`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2021 15:31:03
// Design Name: 
// Module Name: LED_TEST_tb
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


module LED_TEST_tb(

    );
    
    reg sys_clk, sw2;
    reg [2:0] led0_sel;
    reg [2:0] led1_sel; 
    reg [2:0] led2_sel; 
    reg [2:0] led3_sel;
    
    wire led0, led1, led2, led3;
    
    LED_TEST uut(
     .sys_clk(sys_clk),
     .sw1(),
     .sw2(sw2),
     .btn0(),
     .btn1(),
     .btn2(),
     .led0_sel(led0_sel),
     .led1_sel(led1_sel),
     .led2_sel(led2_sel),
     .led3_sel(led3_sel),
     .led0(led0),
     .led1(led1),
     .led2(led2),
     .led3(led3)
    
    );
    
         integer i;
    
     initial begin
        $display("LED_TEST.v test running");
         sw2 = 0;
         led0_sel = 2;  // 0 on,1 off,2 pwm,3 !pwm,4 blink slow,5 ! blinkslow,6 blink fast,7 !blink fast
         led1_sel = 3;
         led2_sel = 6;
         led3_sel = 7;
         sys_clk = 1'b0;
         #100;
         sys_clk = 1'b1;
         #100
        
         sw2 = 1;
         
         
         #100;
         
          for (i=0; i<=(919900)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            sys_clk = 1'b0;
            #100;
            sys_clk = 1'b1;
            #100;
        end
         
         
     end
    
endmodule
