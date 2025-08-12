# Arithmetic Circuits

This folder contains Verilog implementations of fundamental arithmetic modules, including adders and subtractors.

## Projects

- **full_adder.v** — Single bit full adder  
- **half_adder.v** — Single bit half adder  
- **4_bit_adder.v** — 4-bit ripple carry adder  
- **subtractor.v** — Single bit subtractor  

## Running Simulations

Testbenches are located in the `testbenches/` folder. Use ModelSim/QuestaSim commands or the scripts in `simulation-scripts/` to compile and simulate.

Example:

```bash
vsim work.tb_full_adder
run -all
