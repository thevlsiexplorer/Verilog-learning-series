`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 13:54:16
// Design Name: 
// Module Name: testbench_or_gate
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


module testbench_or_gate;
reg a;
reg b;
wire y;
or_gate uut (.a(a),.b(b),.y(y));
initial begin
a=0; b=0;
#30;
a=0; b=1;
#40;
a=1; b=0;
#50;
a=1; b=1;
#60;
$finish;
end
endmodule
