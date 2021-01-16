`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2021 17:25:05
// Design Name: 
// Module Name: 8_to_1mux_led
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


module led8_to1mux(
        input [2:0] Sel, //on, off, pwm, !pwm, blink slow, ! blinkslow, blink fast, !blink fast
        input pwm,
        input blink1,
        input blink2,
        output Out
    );
    
    reg out_reg;
    //Check the state of the input lines 

always @ (pwm or blink1 or blink2 or Sel) 

begin 

 case (Sel) 

  3'b000 : out_reg = 1'b1; 

  3'b001 : out_reg = 1'b0; 

  3'b010 : out_reg = pwm; 

  3'b011 : out_reg = !pwm; 

  3'b100 : out_reg = blink1; 

  3'b101 : out_reg = !blink1; 

  3'b110 : out_reg = blink2; 

  3'b111 : out_reg = !blink2; 

  default : out_reg = 1'bx; 

  //If input is undefined then output is undefined 

 endcase 
 
end

assign Out = out_reg;
    
endmodule

