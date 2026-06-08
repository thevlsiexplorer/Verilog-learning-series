`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2026 19:57:01
// Design Name: 
// Module Name: full_adder_half_adder
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
module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

assign sum = a ^ b;
assign carry = a & b;

endmodule

module full_adder_half_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);

wire s1;
wire c1;
wire c2;

assign s1 = a ^ b;
assign c1 = a & b;

assign sum = s1 ^ cin;
assign c2 = s1 & cin;

assign carry = c1 | c2;

endmodule
