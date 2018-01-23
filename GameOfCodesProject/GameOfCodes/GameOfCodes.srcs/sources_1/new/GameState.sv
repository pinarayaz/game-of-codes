`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module GameState(input logic in, reset, clk, output logic gameOn);

always_ff @(posedge clk)
begin
    if(reset)
    begin
     gameOn <= 0;
    end
    
    else if(gameOn == 0 && in == 0)
        begin
        gameOn <= 0;
        end
    else if(gameOn == 0 && in == 1)
        begin
        gameOn <= 1;
        end
    else if(gameOn == 1 && in == 0)
        begin
        gameOn <= 1;
        end
    else if(gameOn == 1 && in == 1)
        begin
        gameOn <= 1;
        end
end
endmodule
