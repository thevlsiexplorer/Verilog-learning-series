`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:01:54
// Design Name: 
// Module Name: testbench_full_adder_half_adder
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
// full_adder_using_half_adder_data_flow modelling 
// in data flow modelling ... the function is directly given instead of intilazing the structure of half adders 
//////////////////////////////////////////////////////////////////////////////////

module testbench_full_adder_half_adder;
reg a;
reg b;
reg cin;
wire sum ;
wire carry;
full_adder_half_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin
    $monitor("Time=%0t a=%b b=%b cin=%b sum=%b carry=%b",
              $time, a, b, cin, sum, carry);
end

initial begin
a=0;b=0;cin=0;
#30;
a=0;b=0;cin=1;
#30;
a=0;b=1;cin=0;
#30;
a=0;b=1;cin=1;
#30;
a=1;b=0;cin=0;
#30;
a=1;b=0;cin=1;
#30;
a=1;b=1;cin=0;
#30;
a=1;b=1;cin=1;
#30;
$finish;
end
endmodule
