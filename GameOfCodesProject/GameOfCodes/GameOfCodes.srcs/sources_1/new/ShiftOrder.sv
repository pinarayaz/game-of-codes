`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module ShiftOrder(input logic [3:0] in, output logic [3:0] out);
    assign out[3] = in[2];
    assign out[2] = in[3];
    assign out[1] = in[0];
    assign out[0] = in[1];
endmodule
