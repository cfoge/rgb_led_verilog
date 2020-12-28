`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
//Engineer: RDJordan
// 
// Create Date: 24.12.2020 13:47:50
// Design Name: 
// Module Name: blink
// Project Name: RGB_LED_SUITE
// Target Devices: Arty A7 20
// Tool Versions: 
// Description: 
// 8 bit pulse width modulator for controllin gled brightness, PWM can be changed on the fly
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pwm(
    input clk, rst,
    input [7:0] PWM_in,
    output PWM_out
   
);

reg [7:0] cnt; //register holding counter for triggering PWM output
reg cnt_dir;  // 0 to count up, 1 to count down
wire [7:0] cnt_next = cnt_dir ? cnt-1'b1 : cnt+1'b1; //
wire cnt_end = cnt_dir ? cnt==8'b00000000 : cnt==8'b11111111; //set/reset cnt when cnt end = cnt_dir




always @(posedge clk) begin

    if (!rst)//set count and dir bits on reset
        begin
             cnt <= 8'b00000000;
            cnt_dir <= 1'b1;
        end
    else
        begin
            cnt <= cnt_end ? PWM_in : cnt_next;
            cnt_dir <= cnt_dir ^ cnt_end;
    end


end

assign PWM_out = cnt_dir;  
endmodule