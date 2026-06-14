`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 03:00:38
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(input I0,input I1,input I2,input I3,input I4,input I5,input I6,input I7,input I8,input S0,input S1,input S2,output y);
assign y = ((~S0&~S1&~S2&I0)|(~S0&~S1&S2&I1)|(~S0&S1&~S2&I2)|(~S0&S1&S2&I3)|(S0&~S1&~S2&I4)|(S0&~S1&S2&I5)|(S0&S1&~S2&I6)|(S0&S1&S2&I7));
endmodule

