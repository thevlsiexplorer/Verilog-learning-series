`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 14:56:11
// Design Name: 
// Module Name: testbench_nand_gate
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


module testbench_nand_gate;
reg x;
reg y;
wire z;
nand_gate uut (.x(x),.y(y),.z(z));
initial begin 
#10;
x=0;#5; y=0;
#20;
x=0;#5;y=1;
#30;
x=1;#5;y=0;
#20;
x=1;#5; y=1;
#25;
$finish;
end
endmodule
