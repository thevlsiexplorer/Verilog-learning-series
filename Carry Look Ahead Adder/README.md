# Carry Look Ahead Adder (CLA) extended version 

##  Overview

This project implements a **4-bit Carry Look Ahead Adder (CLA)** in Verilog HDL.

Unlike a Ripple Carry Adder (RCA), where the carry propagates sequentially from one full adder to the next, a Carry Look Ahead Adder computes the carry signals in advance using **Generate (G)** and **Propagate (P)** signals. This significantly reduces carry propagation delay and improves the speed of addition.

---

## ✨ Features

* 4-bit Carry Look Ahead Adder
* Written using **Dataflow Modeling**
* Uses Generate and Propagate logic
* Implements expanded carry equations
* Includes a Verilog testbench
* Verified using Xilinx Vivado Simulator

---

##  Theory

### Generate Signal

A carry is generated when both input bits are 1.

**Equation**

```
G = A & B
```

### Propagate Signal

A carry is propagated when exactly one input bit is 1.

**Equation**

```
P = A ^ B
```

### Carry Equations

```
C1 = G0 + P0Cin

C2 = G1 + P1G0 + P1P0Cin

C3 = G2 + P2G1 + P2P1G0 + P2P1P0Cin

C4 = G3 + P3G2 + P3P2G1 + P3P2P1G0 + P3P2P1P0Cin
```

### Sum Equations

```
Sum0 = P0 ^ Cin
Sum1 = P1 ^ C1
Sum2 = P2 ^ C2
Sum3 = P3 ^ C3
```

---

##  Tools Used

* Verilog HDL
* Xilinx Vivado
* Vivado Simulator

---

## 📂 Project Files

```
carry_look_ahead_adder.v
test_bench_carry_look_ahead_adder.v
waveform.png
README.md
```

---

## 🧪 Test Cases

| A    | B    | Cin | Expected Result |
| ---- | ---- | --- | --------------- |
| 1000 | 1001 | 0   | 10001 (17)      |
| 1100 | 1111 | 0   | 11011 (27)      |
| 0101 | 0110 | 0   | 01011 (11)      |
| 1111 | 1111 | 0   | 11110 (30)      |

---

##  Simulation Result

The simulation waveform confirms that the Carry Look Ahead Adder correctly computes the sum and carry for all applied test cases.

---

##  Learning Outcomes

Through this project, I learned:

* Difference between Ripple Carry Adder and Carry Look Ahead Adder
* Carry propagation delay
* Generate and Propagate concepts
* Expanded carry equations
* Dataflow modeling in Verilog
* Writing Verilog testbenches
* Functional simulation and waveform verification

---

##  Author

**Geethanjali T S**

M.Tech – VLSI & Embedded Systems

Learning Verilog one project at a time through my **#VerilogLearningSeries**

 If you found this project useful, feel free to explore the repository and follow my learning journey!

