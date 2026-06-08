`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2026 12:23:40
// Design Name: 
// Module Name: testbench_fulladder
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


module testbench_full_adder;
reg a;
reg b;
reg cin;
wire sum ;
wire carry;
full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin 
$monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Carry=%b", $time, a, b, cin, sum, carry);
end 

initial begin
a=0; b=0; cin=0;
#30;
a=0; b=0; cin=1;
#30;
a=0; b=1; cin=0;
#30;
a=0; b=1; cin=1;
#30;
a=1; b=0; cin=0;
#30;
a=1; b=0; cin=1;
#30;
a=1; b=1; cin=0;
#30;
a=1; b=1; cin=1;
#30;
$finish;
end
endmodule
