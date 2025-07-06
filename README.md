
# ALUControl – 2-bit Operation Decoder

This repository contains a Verilog module named `ALUControl`, which acts as a 2-to-4 decoder for ALU operation control. It decodes a 2-bit control signal (`ALUOp`) into four enable outputs: `ADD_EN`, `SUB_EN`, `AND_EN`, and `OR_EN`. This kind of logic is typically used in the control unit of a processor or a basic ALU.

---

## Files

- `ALUControl.v`  
  The main Verilog design file containing the ALUControl module.

- `tb_ALUControl.v`  
  The testbench used to simulate and verify the functionality of the ALUControl module.

---

## Functionality

The module takes a 2-bit input `ALUOp` and enables only one of the four operation outputs based on the input pattern.

### Truth Table

| ALUOp | ADD_EN | SUB_EN | AND_EN | OR_EN |
|-------|--------|--------|--------|--------|
| 00    |   1    |   0    |   0    |   0    |
| 01    |   0    |   1    |   0    |   0    |
| 10    |   0    |   0    |   1    |   0    |
| 11    |   0    |   0    |   0    |   1    |

---

## Simulation Details

The module was tested using a Verilog testbench that applies all four possible combinations of the 2-bit `ALUOp` signal. Each value is applied for 10 nanoseconds in simulation, and the outputs are monitored using `$display` and `$monitor`.

### Sample Simulation Output
![image](https://github.com/user-attachments/assets/0811cb3f-8e30-4dd8-a1c8-528e0ad59993)


