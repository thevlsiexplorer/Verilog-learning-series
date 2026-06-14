`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 12:13:42
// Design Name: 
// Module Name: testbench_mux_4_1
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


module testbench_mux_4_1;
reg I0;
reg I1;
reg I2;
reg I3;
reg S0;
reg S1;
wire y;
mux_4_1 uut(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.S0(S0),.S1(S1),.y(y));

initial begin
$monitor("Time=%0t I0=%b I1=%b I2=%b I3=%b S1=%b S0=%b y=%b",
              $time,I0,I1,I2,I3,S1,S0,y);
end
initial begin
    $dumpfile("mux_4_1.vcd");
    $dumpvars(0, testbench_mux_4_1);
end

initial begin 
I0=0;
I1=1;
I2=0;
I3=1;

S0 = 0;S1=0;
#10;
S0 = 0;S1=1;
#10;
S0 = 1;S1=0;
#10;
S0 = 1;S1=1;
#10;
$finish;
end
endmodule
