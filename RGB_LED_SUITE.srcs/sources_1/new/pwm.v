`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2020 16:53:57
// Design Name: 
// Module Name: pwm
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


module pwm(
    input clk, rst,
    input [7:0] PWM_in,
    output PWM_out,
    reg [7:0] cnt_out
);

reg [7:0] cnt;
reg cnt_dir;  // 0 to count up, 1 to count down
wire [7:0] cnt_next = cnt_dir ? cnt-1'b1 : cnt+1'b1;
wire cnt_end = cnt_dir ? cnt==8'b00000000 : cnt==8'b11111111;




always @(posedge clk) begin

    if (!rst)
    begin
    cnt <= 4'b00000000;
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