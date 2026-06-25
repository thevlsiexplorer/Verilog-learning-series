`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2026 17:29:55
// Design Name: 
// Module Name: ripple_carry_adder
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

module full_adder( input a , input b , input c , output sum , output carry ) ;
assign sum = a ^ b ^ c ;
assign carry = (a&b)|(a&c)|(b&c);
endmodule 

module ripple_carry_adder ( input [3:0]A , input [3:0]B  ,input cin ,  output [3:0] sum , output c4 ) ;
wire c1 ;
wire c2 ;
wire c3 ;

full_adder FA0 ( A[0] , B[0] , cin , sum[0] , c1 ) ;
full_adder FA1 ( A[1] , B[1] , c1 , sum[1] , c2   ) ;
full_adder FA2 ( A[2] , B[2] , c2 , sum[2] , c3 )    ;
full_adder FA3 ( A[3] , B[3] , c3  , sum[3] , c4 ) ;
endmodule


