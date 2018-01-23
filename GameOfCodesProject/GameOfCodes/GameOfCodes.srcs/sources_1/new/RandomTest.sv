`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module RandomTest();
 
 // Inputs
 logic clock;
 logic reset;
 logic enable;
 
 // Outputs
 logic [3:0] rondo;
 
 RandomGenerator dut(clock, reset, enable, rondo);
  
 initial begin
  enable = 1; #4;
  clock = 0;
  reset = 1; #4;
  clock = 1; #4;
  clock = 0; #4;
  reset = 0; #4;
  
  forever
   #2 clock = ~clock;
  end  
endmodule
