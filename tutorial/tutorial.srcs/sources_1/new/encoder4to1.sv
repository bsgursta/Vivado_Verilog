`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 03:07:51 PM
// Design Name: 
// Module Name: encoder4to1
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


module encoder4to1(
    in_1,
    in_2,
    in_3,
    in_4,
    out
    );
    
    input in_1;
    input in_2;
    input in_3;
    input in_4;
    output reg out;
    
    //reg reg_val = 0;
    
    
    //even numbers 0 and odd numbers 1
    //case statement to update register
    
    //can be considered combinational, but it depends on what is inside the always statement
    always @(*) //logic is always on
    begin
        case ({in_1, in_2, in_3, in_4})
            4'b0000 : out <= 0;
            4'b0001 : out <= 1;
            4'b0010 : out <= 0;
            4'b0011 : out <= 1;
            4'b0100 : out <= 0;
            4'b0101 : out <= 1;
            4'b0110 : out <= 0;
            4'b0111 : out <= 1;
            4'b1000 : out <= 0;
            4'b1001 : out <= 1;
            4'b1010 : out <= 0;
            4'b1011 : out <= 1;
            4'b1100 : out <= 0;
            4'b1101 : out <= 1;
            4'b1110 : out <= 0;
            4'b1111 : out <= 1;
            default : out <= 0;
        endcase
    end
    
endmodule
