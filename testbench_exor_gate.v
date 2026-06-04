`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 07:15:32
// Design Name: 
// Module Name: testbench_exor_gate
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


module testbench_exor_gate;
reg a;
reg b;
wire y;
exor_gate uut(.a(a),.b(b),.y(y));
initial begin 
a=0 ; b=0;
#10;
a=0 ; b=1;
#10;
a=1 ; b=0;
#10;
a=1 ; b=1;
#10;
$finish;
end
endmodule
