`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 11:14:04
// Design Name: i bit comparator 
// Module Name: comparator_i_bit
// Project Name: comparator 
// Target Devices: 
// Tool Versions: 
// Description: a 1 bit comparator is a combinational circuit that used to compare two binary inputs and indicates whether one is greater , lesser or equal to each other 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator_1_bit(input a , input b , output y1 , output y2 , output y3 );
assign y1 = (~a & b );
assign y2 = ~(a ^ b); 
assign y3 = ( a & ~b );
endmodule
