`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2021 12:25:25
// Design Name: 
// Module Name: LED8_1mux_tb
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


module LED8_1mux_tb();




 // Inputs

 reg [2:0] Sel;

 reg In1;

 reg In2;

 reg In3;

 

 // Outputs

 wire  Out;

 

 //temporary variable

 reg [2:0] count = 3'd0;

 

 // Instantiate the Unit Under Test (UUT)

 led8_to_1mux uut (

  .Out(Out), 

  .Sel(Sel), 

  .pwm(In1), 

  .blink1(In2), 

  .blink2(In3)

  

 );


 initial begin

  // Initialize Inputs

  Sel = 0;

  In1 = 0;

  In2 = 0;

  In3 = 0;

  

  // Wait 100 ns for global reset to finish

  #100;

        

  // Add stimulus here

  Sel = 3'd0;

  In1 = 1'd0;

  In2 = 1'd0;

  In3 = 1'd0;

 

  //Selection input generation

  for (count = 0; count < 8; count = count + 1'b1)

  begin

   Sel = count;

   #20;

  end

 end      

endmodule