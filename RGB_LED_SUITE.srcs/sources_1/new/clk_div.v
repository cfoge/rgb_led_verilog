`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2021 17:07:46
// Design Name: 
// Module Name: clk_div
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


module clk_div(
         input clk,
         output clk_div
    );
       

    
reg [12:0] cnt = 0;
always @(posedge clk) cnt <= cnt+1;
assign clk_div = cnt[12];
  
endmodule


   
    
 
