`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module KeyInputCodeComparator(input logic [3:0] random, input logic [3:0] key_code, input logic gameOn, output logic result);

    xnor a1(s3,random[3],key_code[3]);
    xnor a2(s2,random[2],key_code[2]);
    xnor a3(s1,random[1],key_code[1]);
    xnor a4(s0,random[0],key_code[0]);
    and fin(result,s0,s1,s2,s3,gameOn);

endmodule

