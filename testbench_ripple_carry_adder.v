`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VLSI_with_geethanjali
// Engineer: geethanjali_t_s
// 
// Create Date: 25.06.2026 07:10:28
// Design Name: 4_BIT_RIPPLE_CARRY_ADDER
// Module Name: testbench_ripple_carry_adder
// Project Name: TESRTBENCH_4_BIT_RIPPLE_CARRY_ADDER 
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


module testbench_ripple_carry_adder;
reg [3:0]A ;
reg [3:0]B ;
reg cin ;
wire c4 ;
wire [3:0] sum ;

ripple_carry_adder uut(.A(A),.B(B),.cin(cin), .sum(sum),.c4(c4));
initial begin 
$dumpfile("ripple_carry_adder.vcd");
$dumpvars(0,testbench_ripple_carry_adder);

$monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b C4=%b",
              $time, A, B, cin, sum, c4);
A = 4'b0010 ;
B = 4'b0011 ;
cin = 0 ;
#20;   
                 // output should be [ carry = 0 , sum = 0101 ]
A = 4'b1010 ;
B = 4'b1100 ;
cin = 0 ;
#20;
                  // output should be [ carry = 1 , sum = 110 ]
A = 4'b1111 ;
B = 4'b0101 ;
cin = 0 ;
#20;
                   // ouput should be [ carry = 1 , sum = 0100 ]
A = 4'b1111 ;
B = 4'b1111 ;
cin = 0 ;
#20;
                     // output should be [ carry = 1 , sum = 1110 ]
$finish;
end
endmodule
