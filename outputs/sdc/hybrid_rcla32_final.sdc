################################################################################
#
# Design name:  hybrid_rcla32
#
# Created by icc2 write_sdc on Thu May 21 21:52:23 2026
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: FUNC
# Corner: TT
# Scenario: SCEN_TT

# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 10
create_clock -name VCLK -period 2 -waveform {0 1}
set_load -pin_load 0.05 [get_ports {Sum[31]}]
set_load -pin_load 0.05 [get_ports {Sum[30]}]
set_load -pin_load 0.05 [get_ports {Sum[29]}]
set_load -pin_load 0.05 [get_ports {Sum[28]}]
set_load -pin_load 0.05 [get_ports {Sum[27]}]
set_load -pin_load 0.05 [get_ports {Sum[26]}]
set_load -pin_load 0.05 [get_ports {Sum[25]}]
set_load -pin_load 0.05 [get_ports {Sum[24]}]
set_load -pin_load 0.05 [get_ports {Sum[23]}]
set_load -pin_load 0.05 [get_ports {Sum[22]}]
set_load -pin_load 0.05 [get_ports {Sum[21]}]
set_load -pin_load 0.05 [get_ports {Sum[20]}]
set_load -pin_load 0.05 [get_ports {Sum[19]}]
set_load -pin_load 0.05 [get_ports {Sum[18]}]
set_load -pin_load 0.05 [get_ports {Sum[17]}]
set_load -pin_load 0.05 [get_ports {Sum[16]}]
set_load -pin_load 0.05 [get_ports {Sum[15]}]
set_load -pin_load 0.05 [get_ports {Sum[14]}]
set_load -pin_load 0.05 [get_ports {Sum[13]}]
set_load -pin_load 0.05 [get_ports {Sum[12]}]
set_load -pin_load 0.05 [get_ports {Sum[11]}]
set_load -pin_load 0.05 [get_ports {Sum[10]}]
set_load -pin_load 0.05 [get_ports {Sum[9]}]
set_load -pin_load 0.05 [get_ports {Sum[8]}]
set_load -pin_load 0.05 [get_ports {Sum[7]}]
set_load -pin_load 0.05 [get_ports {Sum[6]}]
set_load -pin_load 0.05 [get_ports {Sum[5]}]
set_load -pin_load 0.05 [get_ports {Sum[4]}]
set_load -pin_load 0.05 [get_ports {Sum[3]}]
set_load -pin_load 0.05 [get_ports {Sum[2]}]
set_load -pin_load 0.05 [get_ports {Sum[1]}]
set_load -pin_load 0.05 [get_ports {Sum[0]}]
set_load -pin_load 0.05 [get_ports {Cout}]
# Warning: Libcell power domain derates are skipped!

set_clock_uncertainty -setup 0.15 [get_clocks {VCLK}]
set_clock_uncertainty -hold 0.06 [get_clocks {VCLK}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[31]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[30]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[29]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[28]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[27]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[26]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[25]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[24]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[23]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[22]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[21]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[20]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[19]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[18]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[17]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[16]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[15]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[14]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[13]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[12]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[11]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[10]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[9]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[8]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[7]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[6]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[5]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[4]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[3]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[2]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[1]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {A[0]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[31]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[30]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[29]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[28]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[27]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[26]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[25]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[24]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[23]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[22]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[21]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[20]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[19]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[18]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[17]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[16]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[15]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[14]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[13]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[12]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[11]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[10]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[9]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[8]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[7]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[6]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[5]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[4]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[3]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[2]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[1]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {B[0]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 31
set_driving_cell -lib_cell INVX1_RVT [get_ports {Cin}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[31]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[31]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[30]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[30]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[29]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[29]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[28]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[28]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[27]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[27]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[26]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[26]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[25]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[25]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[24]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[24]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[23]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[23]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[22]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[22]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[21]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[21]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[20]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[20]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[19]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[19]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[18]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[18]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[17]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[17]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[16]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[16]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[15]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[15]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[14]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[14]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[13]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[13]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[12]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[12]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[11]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[11]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[10]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[10]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[9]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[9]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[8]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[8]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[7]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[7]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[6]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[6]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[5]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[5]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[4]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[4]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[3]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[3]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[2]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[2]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[1]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[1]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {A[0]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {A[0]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[31]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[31]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[30]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[30]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[29]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[29]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[28]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[28]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[27]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[27]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[26]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[26]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[25]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[25]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[24]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[24]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[23]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[23]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[22]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[22]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[21]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[21]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[20]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[20]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[19]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[19]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[18]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[18]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[17]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[17]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[16]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[16]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[15]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[15]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[14]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[14]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[13]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[13]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[12]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[12]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[11]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[11]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[10]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[10]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[9]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[9]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[8]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[8]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[7]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[7]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[6]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[6]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[5]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[5]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[4]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[4]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[3]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[3]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[2]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[2]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[1]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[1]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {B[0]}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {B[0]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 22; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 25
set_input_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Cin}]
set_input_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Cin}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[31]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[31]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[30]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[30]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[29]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[29]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[28]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[28]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[27]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[27]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[26]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[26]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[25]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[25]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[24]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[24]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[23]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[23]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[22]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[22]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[21]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[21]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[20]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[20]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[19]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[19]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[18]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[18]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[17]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[17]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[16]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[16]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[15]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[15]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[14]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[14]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[13]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[13]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[12]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[12]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[11]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[11]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[10]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[10]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[9]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[9]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[8]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[8]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[7]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[7]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[6]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[6]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[5]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[5]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[4]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[4]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[3]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[3]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[2]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[2]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[1]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[1]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Sum[0]}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Sum[0]}]
# /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 23; \
#   /home2/MONSOON2025/ys538/our/pnr/work/common/scripts/base_constraints.tcl, \
#   line 26
set_output_delay -clock [get_clocks {VCLK}] -min 0 [get_ports {Cout}]
set_output_delay -clock [get_clocks {VCLK}] -max 0.5 [get_ports {Cout}]
set_max_transition 0.2 [current_design]
set_max_capacitance 9 [current_design]
