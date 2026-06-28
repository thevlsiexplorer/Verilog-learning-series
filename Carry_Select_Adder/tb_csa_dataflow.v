`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2026 15:07:05
// Design Name: 
// Module Name: tb_csa_dataflow
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


module tb_csa_dataflow;
reg [3:0] A  ;
reg [3:0] B ;
reg cin ;
wire[3:0] sum;
wire c4 ;

csa_dataflow uut (  .A(A) , .B(B) , .cin(cin) , .sum(sum) , .c4(c4) ) ;

initial begin 

$monitor("Time = %0t | A = %b | B = %b | Cin = %b | Sum = %b | Cout = %b",
          $time, A, B, cin, sum, c4);

A = 4'b1010 ; B = 4'b1011 ; cin = 1'b0 ; 
# 20;
A = 4'b1010 ; B = 4'b1011 ; cin = 1'b1 ; 
# 20;
A = 4'b1011 ; B = 4'b1011 ; cin = 1'b0 ; 
# 20;
A = 4'b1011 ; B = 4'b1011 ; cin = 1'b1 ; 
# 20;
A = 4'b0101 ; B = 4'b0101 ; cin = 1'b0 ;
# 20; 
A = 4'b0101 ; B = 4'b0101 ; cin = 1'b1 ; 
# 20;
A = 4'b1000 ; B = 4'b1000 ; cin = 1'b0 ;
# 20; 
A = 4'b1000 ; B = 4'b1000 ; cin = 1'b1 ; 
# 20;

$finish;
end 
endmodule
