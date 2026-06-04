`timescale 1ns / 1ps



module testbench_and_gate;
reg a ;
reg b ;
wire y ;

and_gate uut(.a(a),.b(b),.y(y));
initial begin 
a=0;b=0;
#100;
a=0; b=1;
#100;
a=1; b=0;
#100;
a=1; b=1 ;
#100;
$finish;
end
endmodule

