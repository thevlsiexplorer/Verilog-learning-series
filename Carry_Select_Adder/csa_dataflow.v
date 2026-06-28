`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2026 12:21:17
// Design Name: 
// Module Name: csa_dataflow
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


module csa_dataflow(input [3:0]A , input [3:0]B , input cin , output [3:0]sum , output c4 );


 // wires declaration 
 
wire [3:0] sum_0;
wire [3:0] sum_1;
wire c4_0 ;
wire c4_1 ;

// intermediate wire declaration for carry = 0

wire c1_0 ;
wire c2_0 ;
wire c3_0 ;

// intermediate wire declaration for carry = 1

wire c1_1 ;
wire c2_1 ;
wire c3_1 ;

//  assign equation for sum =0 

assign sum_0[0]  =  ( A[0] ^ B [0]  ^  1'b0) ;
assign sum_0[1]  =  ( A[1] ^ B [1]  ^  c1_0) ;
assign sum_0[2]  =  ( A[2] ^ B [2]  ^  c2_0) ;
assign sum_0[3]  =  ( A[3] ^ B [3]  ^  c3_0) ;

// assign equation for sum = 1 

assign sum_1[0]  =  ( A[0] ^ B [0]  ^  1'b1) ;
assign sum_1[1]  =  ( A[1] ^ B [1]  ^  c1_1) ;
assign sum_1[2]  =  ( A[2] ^ B [2]  ^  c2_1) ;
assign sum_1[3]  =  ( A[3] ^ B [3]  ^  c3_1) ;


// assign equation for carry = 0 , carry = 1

assign c4_0   = ( A[3] & B[3] ) | ( A[3] ^ B[3] ) & c3_0  ; 
assign c4_1   = ( A[3] & B[3] ) | ( A[3] ^ B[3] ) & c3_1  ; 

// assign equations for intermediate carries when cin =0 

assign c1_0 = (A[0] & B[0]) | ((A[0] ^ B[0]) & 1'b0 );
assign c2_0 = (A[1] & B[1]) | ((A[1] ^ B[1]) & c1_0 );
assign c3_0 = (A[2] & B[2]) | ((A[2] ^ B[2]) & c2_0 );

// assign equations for intermediate carries when cin =1 

assign c1_1 = (A[0] & B[0]) | ((A[0] ^ B[0]) & 1'b1 );
assign c2_1 = (A[1] & B[1]) | ((A[1] ^ B[1]) & c1_1 );
assign c3_1 = (A[2] & B[2]) | ((A[2] ^ B[2]) & c2_1 );

// assign equations for the mux 

assign sum[0] = (~cin & sum_0[0]) | (cin & sum_1[0]);  
assign sum[1] = (~cin & sum_0[1]) | (cin & sum_1[1]);
assign sum[2] = (~cin & sum_0[2]) | (cin & sum_1[2]);
assign sum[3] = (~cin & sum_0[3]) | (cin & sum_1[3]); 
assign c4 = (~cin & c4_0) |   (cin & c4_1);

endmodule
