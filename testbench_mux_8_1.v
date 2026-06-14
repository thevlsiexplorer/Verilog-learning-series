`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2026 03:23:35
// Design Name: mux_8:1
// Module Name: testbench_mux_8_1
// Project Name: 8:1 multiplexer
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


module testbench_mux_8_1;
reg I0;
reg I1;
reg I2;
reg I3;
reg I4;
reg I5;
reg I6;
reg I7;
reg S0;
reg S1;
reg S2;
wire y;
mux_8_1 uut(.I0(I0),.I1(I1),.I2(I2),.I3(I3),.I4(I4),.I5(I5),.I6(I6),.I7(I7),.S0(S0),.S1(S1),.S2(S2),.y(y));

initial begin
$monitor("Time=%0t I0=%b I1=%b I2=%b I3=%b I4=%b I5=%b I6=%b I7=%b S2=%b S1=%b S0=%b y=%b",
         $time, I0, I1, I2, I3, I4, I5, I6, I7, S2, S1, S0, y);
end

initial begin
    $dumpfile("mux_8_1.vcd");
    $dumpvars(0, testbench_mux_8_1);
end
  
initial begin 
I0 = 0;
I1 = 1;
I2 = 0;
I3 = 1;
I4 = 0;
I5 = 1;
I6 = 0;
I7 = 1;

S0=0;S1=0;S2=0;
#10;
S0=0;S1=0;S2=1;
#10;
S0=0;S1=1;S2=0;
#10;
S0=0;S1=1;S2=1;
#10;
S0=1;S1=0;S2=0;
#10;
S0=1;S1=0;S2=1;
#10;
S0=1;S1=1;S2=0;
#10;
S0=1;S1=1;S2=1;
#10;
$finish;
end

endmodule
