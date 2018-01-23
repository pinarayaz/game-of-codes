`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module MappingTableKeyRegister(input logic [3:0] key_value, output logic [3:0] key_code);
    always_comb
    begin
        case(key_value)

        4'b0000: key_code <= 4'b1010;
        4'b0001: key_code <= 4'b0010;
        4'b0010: key_code <= 4'b0111;
        4'b0011: key_code <= 4'b0001;
        4'b0100: key_code <= 4'b0101;
        4'b0101: key_code <= 4'b0000;
        4'b0110: key_code <= 4'b1100;
        4'b0111: key_code <= 4'b0011;
        4'b1000: key_code <= 4'b1111;
        4'b1001: key_code <= 4'b1001;
        4'b1010: key_code <= 4'b0110;
        4'b1011: key_code <= 4'b1000;
        4'b1100: key_code <= 4'b1110;
        4'b1101: key_code <= 4'b0100;
        4'b1110: key_code <= 4'b1101;
        4'b1111: key_code <= 4'b1011;
    
        endcase
    end
endmodule
