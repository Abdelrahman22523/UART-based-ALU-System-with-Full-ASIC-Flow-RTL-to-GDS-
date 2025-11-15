# UART-based-ALU-System-with-Full-ASIC-Flow-RTL-to-GDS-
🔧 Project Overview

This project implements a complete digital design and verification flow — from RTL development to post-layout validation. It includes custom hardware modules, full verification, synthesis, timing closure, and physical design culminating in a GDSII layout.

🚀 Key Features
RTL Design

Implemented core digital components including:

ALU

Register File

Synchronous/Asynchronous FIFOs

Clocking & Reset Blocks

UART Transmitter/Receiver

Top-Level Main Controller

Verification

Developed a SystemVerilog testbench to verify:

UART-driven transactions

Multi-clock domain transfers

Applied assertion-based checks and functional coverage.

Validated functional correctness with post-layout extracted delays.

Synthesis & Formal Verification

Applied TCL-based constraints for synthesis and timing closure using Synopsys Design Compiler.

Performed formal equivalence checking between RTL and synthesized netlist using Formality.

Ensured timing correctness and constraint adherence across multiple design corners.

Physical Design

Completed the full ICC2 physical design flow from floorplanning to place & route.

Generated GDSII and performed sign-off checks.

Verified post-route timing using static timing analysis.

Conducted post-layout simulation using extracted SDF delays.

📁 Tools & Technologies

Verilog / SystemVerilog

Synopsys Design Compiler

Synopsys Formality

Synopsys ICC2

PrimeTime (STA)

ModelSim / VCS

TCL scripting
