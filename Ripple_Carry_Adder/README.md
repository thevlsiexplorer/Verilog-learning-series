## 4-Bit Ripple Carry Adder

## Description

1. This project implements a 4-Bit Ripple Carry Adder using Structural Modeling in Verilog HDL.
2. A Ripple carry addder adds multi bit binary numbers 
3. connects multiple full adders in series 
4. output of the first full adder is used as the input to the second full adder 
5. carry ripples from one stage to another .
   
## Files

* ripple_carry_adder.v
* testbench_ripple_carry_adder.v
* waveform.png
* logic circuit

## Concepts Learned

* Structural Modeling
* Module Instantiation
* Carry Propagation
* Testbench Creation

## Test Cases

| A    | B    | Cin | Result |
| ---- | ---- | --- | ------ |
| 0010 | 0011 | 0   | 0101   |
| 1010 | 1100 | 0   | 10110  |
| 1111 | 0101 | 0   | 10100  |
| 1111 | 1111 | 0   | 11110  |

## Author

Geethanjali T S

verilog_learning_series

