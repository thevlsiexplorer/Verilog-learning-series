`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 14:34:54
// Design Name: 
// Module Name: testbench_not_gate
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


module testbench_not_gate;
reg a;
wire y;
not_gate uut (.a(a),.y(y));
initial begin 
a =0;
#35;
a= 1;
#45;
$finish;
end
endmodule
