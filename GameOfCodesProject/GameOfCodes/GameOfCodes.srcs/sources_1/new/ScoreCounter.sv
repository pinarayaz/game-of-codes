`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module ScoreCounter(input logic increment, decrement,gameOn, reset, clk, output logic [3:0] score);
    
      always_ff @(posedge clk)
      begin
         if(reset)
            score <= 4'b0000;
         else if(increment & gameOn)begin
         if(score != 4'b1001)
            score <= score + 1;
            end
         else if(decrement & gameOn)begin
         if(score != 4'b0000)
            score <= score - 1;
            end 
      end
endmodule
