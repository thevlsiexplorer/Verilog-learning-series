# 4-bit Carry Select Adder (Dataflow Modeling)

## Verilog Learning Series

This repository contains the implementation of a **4-bit Carry Select Adder (CSA)** using **Dataflow Modeling** in Verilog HDL.

The Carry Select Adder improves the speed of binary addition by computing two possible results in parallel—one assuming **Cin = 0** and the other assuming **Cin = 1**. A 2:1 multiplexer then selects the correct output based on the actual carry input.

---

##  Objective

* Understand the Carry Select Adder architecture.
* Learn how parallel carry computation reduces propagation delay.
* Implement the Carry Select Adder using Dataflow Modeling.
* Verify the design using a Verilog testbench.
* Analyze the RTL schematic generated in Vivado.

---

## 📂 Files Included

* `csa_dataflow.v` – 4-bit Carry Select Adder (Dataflow Model)
* `tb_csa_dataflow.v` – Testbench
* `hierarchial desighn .png` – RTL Schematic generated using Vivado
* `carry_select_adder_output.png` – Simulation Waveform

---

##  Architecture

The Carry Select Adder consists of:

* Two 4-bit Ripple Carry Adders

  * One assumes **Cin = 0**
  * One assumes **Cin = 1**
* Five 2:1 Multiplexers

  * Four multiplexers select the Sum bits.
  * One multiplexer selects the final Carry output.

The actual carry input (`Cin`) acts as the select signal for all multiplexers.

---

##  Modeling Style

 Dataflow Modeling

---

## 🧪 Test Vectors

| Test | A    | B    | Cin | Expected Sum | Expected Cout |
| ---- | ---- | ---- | --- | ------------ | ------------- |
| 1    | 1010 | 1011 | 0   | 0101         | 1             |
| 2    | 1010 | 1011 | 1   | 0110         | 1             |
| 3    | 1011 | 1011 | 0   | 0110         | 1             |
| 4    | 1011 | 1011 | 1   | 0111         | 1             |
| 5    | 0101 | 0101 | 0   | 1010         | 0             |
| 6    | 0101 | 0101 | 1   | 1011         | 0             |
| 7    | 1000 | 1000 | 0   | 0000         | 1             |
| 8    | 1000 | 1000 | 1   | 0001         | 1             |

---

##  Verification

The design was verified using a Verilog testbench in Vivado.

Verification included:

* Functional Simulation
* RTL Elaboration
* RTL Schematic Analysis

---

##  Tools Used

* Verilog HDL
* Xilinx Vivado


---

## 📷 Results

This repository includes:

* Verilog Source Code
* Testbench
* Simulation Waveform
* RTL Schematic

---

##  Concepts Covered

* Carry Select Adder Architecture
* Parallel Carry Computation
* Dataflow Modeling
* Testbench Development
* Functional Verification
* RTL Analysis using Vivado

---

## 👩‍💻 Author

**Geethanjali T S**

**M.Tech – VLSI & Embedded Systems**

**Verilog Learning Series | VLSI with Geethanjali**

Building a strong foundation in Digital Design and VLSI—one Verilog module at a time.

