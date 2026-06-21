# Elevator Controller RTL Design (Verilog)

## Overview

This project implements an Elevator Controller using Verilog HDL. The controller is designed as a Finite State Machine (FSM) that processes floor requests and moves the elevator safely between floors.

The project is intended for:

- RTL Design Learning
- Digital Design
- FPGA Development
- VLSI Frontend Engineering
- Verilog Practice
- Interview Preparation

---

## Features

- FSM-based controller
- Multiple floor support
- Up and Down movement
- Floor request handling
- Reset functionality
- Modular RTL design
- Simulation Testbench
- Synthesizable Verilog

---

## Project Structure

Elevator-Controller-RTL-Design-Verilog/
│\
   ├── src\
   │   └── Elevator_controller.v\
   │\
   ├── testbench\
   │   └── Elevator_controller_tb.v\
   │\
   ├── docs\
   │   └── waveform.vcd\
   |   └── state_diagram.png\
   │\
   └── README.md


---

## Inputs

| Signal | Description |
|---------|-------------|
| clk | System Clock |
| reset | Active High Reset |
| request | Requested Floor |

---

## Outputs

| Signal | Description |
|---------|-------------|
| up | Elevator Moving Up |
| down | Elevator Moving Down |

---

## Simulation

The controller has been verified using a Verilog testbench.

Simulation verifies:

- Reset operation
- Floor requests
- Up movement
- Down movement
- Idle condition

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- GTKWave

---

## Applications

- Smart Buildings
- Industrial Elevators
- FPGA Projects
- Embedded Controllers
- Digital System Design

---

## Future Improvements

- Door Open/Close Control
- Emergency Stop
- Overload Detection
- Multiple Elevator Scheduling
- Priority Requests
- Lift Direction Optimization
- Floor Display
- Alarm System

---

## Author

Jeel Patel

RTL Design | Digital Design | FPGA | Verilog | VLSI Frontend

