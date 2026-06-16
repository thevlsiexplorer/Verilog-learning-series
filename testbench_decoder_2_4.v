`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2026 09:17:53
// Design Name: 2:4 decoder
// Module Name: testbench_decoder_2_4
// Project Name: decoder_2_4
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


module testbench_decoder_2_4;
reg a;
reg b;
wire y0;
wire y1;
wire y2;
wire y3;
decoder_2_4 uut (.a(a), .b(b), .y0(y0), .y1(y1), .y2(y2), .y3(y3));

initial begin
    $monitor("Time=%0t a=%b b=%b y0=%b y1=%b y2=%b y3=%b",
              $time, a, b, y0, y1, y2, y3);
end 

initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0, testbench_decoder_2_4);
end

initial begin 
a=0; b=0;
#20;
a=0; b=1;
#20;
a=1; b=0;
#20;
a=1; b=1;
#20;
$finish;
end

endmodule
