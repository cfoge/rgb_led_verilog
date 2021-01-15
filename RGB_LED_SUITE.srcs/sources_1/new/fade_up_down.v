`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Robert D Jordan
// 
// Create Date: 28.12.2020 15:55:52
// Design Name: 
// Module Name: fade_up_down
// Project Name: RGB_LED_suite
// Target Devices: 
// Tool Versions: 
// Description: 
// a module for counting up/down to controal the fading of an LED. 8 bit output.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fade_up_down(
    input clk,
    input rst,
    input mode, //0 = fade up and down, 1 = fade up only
    output [7:0] out

    );
    
    reg [7:0] cnt = 0;  // 8bit counter, starts at 0
    reg [7:0] cnt_mask;
    reg cnt_enable;  // 0 to disable the counter, 1 to enable it
    wire cnt_direction;  // 0 to counter backward, 1 to count forward
    reg cnt_direction_driver;
    reg cnt_direction_mask;
    

always @(*) begin
    if (!rst)//set count and dir bits on reset
        begin
            cnt_mask <= 8'b00000000;
            cnt_enable <= 1'b1;
            cnt_direction_mask <= 1'b1;
        end
    else begin
            cnt_mask <= 8'b11111111;
    end
end
    
always @(posedge clk) begin

       
           
              if(cnt_enable) cnt <= cnt_direction ? cnt+1 : cnt-1;
              if(cnt == 255) begin
                if(!mode)
                    begin
                    cnt_direction_driver <= 1'b0;
                    cnt <= cnt - 1;
                    end
                    
                if(mode) 
                    begin
                    cnt <= 0;
                    end
             
                    
                    
              end
              if(cnt == 0) begin
                 cnt_direction_driver <= 1'b1;
                 cnt <= cnt + 1;
          
              end
        
        end


    
       
      
    
    assign cnt_direction = cnt_direction_mask & cnt_direction_driver;
 
    assign out = cnt & cnt_mask;  
    
endmodule
