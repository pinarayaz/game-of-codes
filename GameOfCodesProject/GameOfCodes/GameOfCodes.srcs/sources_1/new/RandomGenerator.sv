`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module RandomGenerator(input logic clk, reset, enable,output logic [3:0] out);
    logic [31:0] rnd;
    always @(posedge clk)
    begin
        if(reset)
            rnd <= '0;
        else 
        begin
            if(enable)
                begin
                rnd[31:1] <= rnd[30:0];
                rnd[0] <= ~(rnd[31] ^ rnd[21] ^ rnd[1] ^ rnd[0]);
                end
        end
     end
    assign out[3] = rnd[25];
    assign out[2] = rnd[5];
    assign out[1] = rnd[30];
    assign out[0] = rnd[23];
endmodule 
