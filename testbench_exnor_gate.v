`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 19:49:46
// Design Name: 
// Module Name: testbench_exnor_gate
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


module testbench_exnor_gate;
reg a;
reg b;
wire y;
exnor_gate uut(.a(a),.b(b),.y(y));
initial begin
a=0; b=0;
#100;
a=0; b=1;
#100;
a=1; b=0;
#100;
a=1; b=1;
#100;
$finish;
end
endmodule
