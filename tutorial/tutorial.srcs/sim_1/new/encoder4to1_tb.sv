`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2025 03:51:19 PM
// Design Name: 
// Module Name: encoder4to1_tb
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


module encoder4to1_tb;

    //DUT inputs are driven by regs
    
    reg in_1;
    reg in_2;
    reg in_3;
    reg in_4;
    wire out;
    
    mux4to1 uut(
        .
