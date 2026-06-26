`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.06.2026 11:19:22
// Design Name: 
// Module Name: test_bench_carry_look_ahead_adder
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


module test_bench_carry_look_ahead_adder;
reg [3:0] A ;
reg [3:0] B ;
reg cin ;
wire [3:0] sum  ;
wire c4 ;
 
carry_look_ahead_adder uut( .A(A),.B(B),.cin(cin), .sum(sum),.c4(c4));

initial begin

$monitor("Time=%0t  A=%b  B=%b  Cin=%b  Sum=%b  Carry=%b",
          $time, A, B, cin, sum, c4); 

A = 4'b1000;
B = 4'b1001;
cin = 0;
#20;

A = 4'b1100;
B = 4'b1111;
cin = 0;
#20;

A = 4'b0101;
B = 4'b0110;
cin = 0;
#20;

A = 4'b1111;
B = 4'b1111;
cin = 0;
#20;

$finish ;
end 
endmodule 


