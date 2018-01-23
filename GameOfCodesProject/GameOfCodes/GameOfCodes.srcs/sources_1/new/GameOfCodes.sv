`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module GameOfCodes(input logic clk, input logic reset, input logic [3:0] keyb_col, input logic start, 
                    output logic a, b, c, d, e, f, g, dp, output logic [3:0]an, output logic [3:0] keyb_row, output logic [3:0] phases, output logic gameOn);
    logic [3:0] random;
    logic key_valid;
    logic [3:0] key_value;
    logic [3:0] key_code;
    logic result;
    logic increment;
    logic decrement;
    logic reset2;
    logic [3:0] score;
    logic gameOn;
    logic [3:0] random_shifted;
    logic [3:0] in0, in1, in2;
    assign in3 = 4'b0000;
    assign in1 = 4'b0000;
    assign in2 = 4'b0000;
    
    GameState gm(start, reset2, clk, gameOn);
    RandomGenerator randgen(clk, reset, ~gameOn, random);
    keypad4X4 keyp(clk, keyb_row, keyb_col, key_value, key_valid);
    ShiftOrder shft(random, random_shifted);
    MappingTableKeyRegister keyreg(key_value, key_code);
    KeyInputCodeComparator comp(random, key_code, gameOn, result);
    
    and an1(increment, key_valid, result);
    and an2(decrement, key_valid, ~result);   
    or o1(reset2,increment,decrement, reset);
    
    ScoreCounter cnt(increment, decrement, gameOn, reset, clk, score);
    steppermotor_wrapper stwrap(clk, random_shifted[3:2], random_shifted[1:0], phases, start);
    SevSeg_4digit sevseg(clk,score, in1, in2, in3, a, b, c, d, e, f, g, dp, an);
    
endmodule