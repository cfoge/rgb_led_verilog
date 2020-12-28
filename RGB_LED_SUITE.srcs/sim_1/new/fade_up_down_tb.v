`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2020 16:08:54
// Design Name: 
// Module Name: fade_up_down_tb
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


module fade_up_down_tb(

    );
    
    reg clk;
    reg rst;
    reg mode;
    wire [7:0] out;
    
    fade_up_down utt(
        .clk(clk),
        .rst(rst),
        .out(out),
        .mode(mode)
    );
    
    integer i;
    
     initial begin
        $display("fade_up_down.v test running");
         rst = 0;
         clk = 1'b0;
         #100;
         clk = 1'b1;
         #100
         rst = 1;
         mode = 1;
         #100;
         
          for (i=0; i<=(900)*2; i=i+1)//run for one full cycle of the output waveform
            begin
            clk = 1'b0;
            #100;
            clk = 1'b1;
            #100;
        end
         
         
     end
    
    
endmodule
