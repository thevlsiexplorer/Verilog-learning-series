`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2026 15:15:20
// Design Name: 
// Module Name: testbench_nor_gate
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


module testbench_nor_gate;
reg p ; 
reg q ;
wire r ;
nor_gate uut(.p(p),.q(q),.r(r));
initial begin 
p=0; q=0;
#20;
p=0; q=1;
#20;
p=1; q=0;
#20;
p=1; q=1;
#20;
$finish;
end 
endmodule
