`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 07:45:56
// Design Name: 
// Module Name: decoder_2_4
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


module decoder_2_4(input a ,input b ,output y0 , output y1 , output y2 , output y3 );
assign y0 = ( ~a & ~b );
assign y1 = ( ~a & b );
assign y2 = ( a & ~b );
assign y3 = ( a & b );
endmodule

