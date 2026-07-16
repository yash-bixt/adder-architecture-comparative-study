# Comparative Study of 32-Bit Adder Architectures Using Synopsys ASIC Flow in 32nm SAED Technology

This work was conducted at **Shiv Nadar Institution of Eminence** under the supervision of **Prof. Venkatnarayan Hariharan** as part of the **Opportunities for Undergraduate Research (OUR2025–26)** program for the **B.Tech. in Electrical & Computer Engineering**.

## Table of Contents

- [Overview](#overview)
- [Implemented Architectures](#implemented-architectures)
- [ASIC Design Flow](#asic-design-flow)
- [Technology Details](#technology-details)
- [Repository Structure](#repository-structure)
- [Acknowledgments](#acknowledgments)
## Overview

This repository presents a comprehensive ASIC implementation and comparative study of multiple 32-bit adder architectures using industry-standard Synopsys EDA tools and the SAED 32nm standard cell library.

The project covers the complete RTL-to-signoff ASIC flow including:

- RTL Design
- Functional Verification
- Logic Synthesis
- Floorplanning
- Placement and Routing
- Parasitic Extraction
- Static Timing Analysis (STA)
- MCMM Analysis

The primary objective is to evaluate and compare various adder architectures based on:

- Delay
- Area
- Power
- Wirelength
- Utilization
- Power-Delay Product (PDP)
- Energy-Delay Product (EDP)

---

# Implemented Architectures

The following 32-bit adder architectures are implemented and analyzed:

- Recursive Carry Lookahead Adder (RCLA)
- Hybrid Recursive Carry Lookahead Adder
- Carry Select Adder (CSLA) with BEC
- Carry Select Adder (CSLA) without BEC
- Kogge-Stone Adder (KSA)
- Brent-Kung Adder (BKA)
- Han-Carlson Adder (HCA)

---

# ASIC Design Flow

The project follows a complete industry-style ASIC implementation methodology.

## RTL Design
- Verilog HDL based synthesizable RTL implementation
- Modular hierarchical design approach

## Functional Verification
- Dedicated Verilog testbenches for each architecture
- RTL simulation and functional validation

## Logic Synthesis
Performed using:
- Synopsys Design Compiler

Generated outputs:
- Gate-level netlists
- Timing reports
- Area reports
- Power reports
- QoR summaries

## Physical Design
Performed using:
- Synopsys IC Compiler II (ICC2)

Flow stages:
- Floorplanning
- Power Planning
- Placement
- Routing
- Optimization
- QoR Analysis

Generated outputs:
- DEF files
- Utilization reports
- Wirelength reports
- Routing reports

## Parasitic Extraction
Performed using:
- Synopsys StarRC

Generated outputs:
- SPEF files

## Signoff STA
Performed using:
- Synopsys PrimeTime

Analysis includes:
- Setup timing
- Hold timing
- MCMM analysis
- Power estimation

---

# Technology Details

| Parameter | Details |
|---|---|
| Technology Node | 32nm |
| Standard Cell Library | SAED 32nm |
| HDL | Verilog |
| Scripting Language | TCL |
| Platform | Linux |
| EDA Tools | Synopsys DC, ICC2, PrimeTime, StarRC |

---

# Repository Structure

```text
adder-architecture-comparative-study/
│
├── docs/                   # Additional project documentation
│
├── outputs/
│   ├── def/                # DEF files generated after PnR
│   ├── netlists/           # Synthesized gate-level netlists
│   ├── sdc/                # Timing constraint files
│   └── spef/               # Extracted parasitic files
│
├── reports/
│   ├── synthesis/          # Design Compiler reports
│   ├── pnr/                # ICC2 physical design reports
│   └── primetime/          # PrimeTime STA reports
│
├── results/
│   ├── csv/                # Extracted comparison tables
│   └── figures/            # Comparison graphs and plots
│
├── rtl/                    # Verilog RTL source files
│
├── scripts/
│   ├── pnr/                # ICC2 automation scripts
│   ├── primetime/          # PrimeTime STA scripts
│   ├── starrc/             # StarRC extraction scripts
│
├── testbench/              # Verilog testbenches
│
├── .gitignore
└── README.md
```

---

# Acknowledgments

I sincerely thank **Prof. Venkatnarayan Hariharan** (<venkatnarayan.h@snu.edu.in>) for his guidance, mentorship, and continuous support throughout this project.
