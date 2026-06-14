`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 12:03:45
// Design Name: 4:1 multiplexer
// Module Name: mux_4_1
// Project Name: multiplexer
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


module mux_4_1(input I0 ,input I1,input I2,input I3, input S0, input S1, output y );
assign y =((~S0&~S1&I0)|(~S0&S1&I1)|(S0&~S1&I2)|(S0&S1&I3));
endmodule
