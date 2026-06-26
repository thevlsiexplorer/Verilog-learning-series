`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CUSAT
// Engineer: GEETHANJALI T S
// 
// Create Date: 25.06.2026 12:32:49
// Design Name: CARRY_LOOK_AHEAD_ADDER_EXPANDED VERSION 
// Module Name: carry_look_ahead_adder
// Project Name: CARRY_LOOK_AHEAD_ADDER
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


module carry_look_ahead_adder( input [3:0]A , input [3:0]B ,input cin , output [3:0]sum , output c4);

wire c1 ;
wire c2 ;
wire c3 ;

wire [3:0] G;
wire [3:0] P;

assign G[0] = A[0] & B[0];
assign P[0] = A[0] ^ B[0];

assign G[1] = A[1] & B[1];
assign P[1] = A[1] ^ B[1];

assign G[2] = A[2] & B[2];
assign P[2] = A[2] ^ B[2];

assign G[3] = A[3] & B[3];
assign P[3] = A[3] ^ B[3];

assign sum[0] = P[0] ^ cin;
assign sum[1] = P[1] ^ c1;
assign sum[2] = P[2] ^ c2;
assign sum[3] = P[3] ^ c3;

assign c1=  G[0] |(  P[0]  & cin );
assign c2= G[1] | (  P[1] & G[0]) |( P[1] & P[0] & cin );
assign c3= G[2] |( P[2] & G[1]) |( P[2] & P[1] & G[0] ) |( P[2] & P[1] & P[0]  & cin )   ;
assign c4= G[3] |( P[3] & G[2]) |( P[3] & P[2] & G[1] ) |( P[3] &  P[2] & P[1] & G[0]) |( P[3] & P[2] & P[1] & P[0] & cin ) ;

endmodule 