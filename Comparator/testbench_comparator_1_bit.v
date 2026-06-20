`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: cochin university of science and technology 
// Engineer: geethanjali t s
// 
// Create Date: 20.06.2026 11:35:12
// Design Name: testbench 1 bit comparator
// Module Name: testbench_comparator_1_bit
// Project Name: 1 bit comparator test bench
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


module testbench_comparator_1_bit;
reg a ;
reg b ;
wire y1 ;
wire y2 ;
wire y3 ;
comparator_1_bit uut(.a(a), .b(b),.y1(y1),.y2(y2)  , .y3(y3));


initial begin
$dumpfile("comparator.vcd");
$dumpvars(0, testbench_comparator_1_bit);

$monitor("Time=%0t A=%b B=%b Y1=%b Y2=%b Y3=%b", $time, a, b, y1, y2, y3);
end
initial begin
a = 0 ; b = 0 ;
#20;
a = 0 ; b = 1 ;
#20;
a = 1 ; b = 0 ;
#20;
a = 1 ; b = 1 ;
#20; 
$finish;
end
endmodule
