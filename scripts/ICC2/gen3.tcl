################################################################################
# Copyright (c) 2025, Shiv Nadar University, Delhi NCR, India. All Rights
# Reserved. Permission to use, copy, modify and distribute this software for
# educational, research, and not-for-profit purposes, without fee and without a
# signed license agreement, is hereby granted, provided that this paragraph and
# the following two paragraphs appear in all copies, modifications, and
# distributions.
#
# IN NO EVENT SHALL SHIV NADAR UNIVERSITY BE LIABLE TO ANY PARTY FOR DIRECT,
# INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST
# PROFITS, ARISING OUT OF THE USE OF THIS SOFTWARE.
#
# SHIV NADAR UNIVERSITY SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT
# NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
# PARTICULAR PURPOSE. THE SOFTWARE PROVIDED HEREUNDER IS PROVIDED "AS IS". SHIV
# NADAR UNIVERSITY HAS NO OBLIGATION TO PROVIDE MAINTENANCE, SUPPORT, UPDATES,
# ENHANCEMENTS, OR MODIFICATIONS.
################################################################################
################################################################################
# Generic ICC2 Physical Design Flow for 32-bit Adders
################################################################################

# Required from run_all.tcl:
# DESIGN_NAME
# DESIGN_TOP
# LIB_NAME
# NETLIST
# SDC

set TECH_FILE "/home2/synopsys/libraries/SAED32_EDK/tech/tf/saed32nm_1p9m.tf"
set NDM_LIB   "/home2/synopsys/libraries/SAED32_EDK/lib/stdcell_rvt/ndm/saed32rvt_base_frame_timing.ndm"

set TLU_MAX      "/home2/synopsys/libraries/SAED32_EDK/tech/starrc/max/saed32nm_1p9m_Cmax.tluplus"
set TLU_MIN      "/home2/synopsys/libraries/SAED32_EDK/tech/starrc/min/saed32nm_1p9m_Cmin.tluplus"
set TECH2ITF_MAP "/home2/synopsys/libraries/SAED32_EDK/tech/starrc/saed32nm_tf_itf_tluplus.map"

if {![info exists DESIGN_NAME]} { error "DESIGN_NAME is not set" }
if {![info exists DESIGN_TOP]}  { error "DESIGN_TOP is not set" }
if {![info exists LIB_NAME]}    { error "LIB_NAME is not set" }
if {![info exists NETLIST]}     { error "NETLIST is not set" }
if {![info exists SDC]}         { error "SDC is not set" }

if {![file exists $NETLIST]} { error "NETLIST not found: $NETLIST" }
if {![file exists $SDC]}     { error "SDC not found: $SDC" }

puts "================================================"
puts "Running ICC2"
puts "Folder design : $DESIGN_NAME"
puts "Top module    : $DESIGN_TOP"
puts "Library       : $LIB_NAME"
puts "Netlist       : $NETLIST"
puts "SDC           : $SDC"
puts "================================================"

# ==========================================================
# CLEANUP / DIRECTORIES
# ==========================================================
if {[file exists $LIB_NAME]} {
    file delete -force $LIB_NAME
}

file mkdir reports
file mkdir output
file mkdir logs

# ==========================================================
# CREATE LIBRARY
# ==========================================================
create_lib $LIB_NAME \
    -technology $TECH_FILE \
    -ref_libs $NDM_LIB

current_lib $LIB_NAME

# ==========================================================
# READ NETLIST WITH EXPLICIT TOP
# Critical fix: prevents ICC2 from choosing fa as top
# ==========================================================
read_verilog -top $DESIGN_TOP $NETLIST

current_block ${DESIGN_TOP}.design
link_block

puts "Current block set to: ${DESIGN_TOP}.design"
# ==========================================================
# READ CONSTRAINTS
# ==========================================================
read_sdc $SDC

# ==========================================================
# MCMM SETUP
# ==========================================================
source ../common/scripts/mcmm.tcl
link_block

report_scenarios > reports/${DESIGN_NAME}_scenarios.rpt

# ==========================================================
# RC / PARASITIC SETUP
# ==========================================================
read_parasitic_tech -tlup $TLU_MAX -name maxTLU
read_parasitic_tech -tlup $TLU_MIN -name minTLU

set_parasitic_parameters -corner TT -early_spec minTLU -late_spec maxTLU
set_parasitic_parameters -corner SS -early_spec minTLU -late_spec maxTLU
set_parasitic_parameters -corner FF -early_spec minTLU -late_spec maxTLU

catch {
    set_tlu_plus_files \
        -max_tluplus $TLU_MAX \
        -min_tluplus $TLU_MIN \
        -tech2itf_map $TECH2ITF_MAP
}

update_timing

# ==========================================================
# FLOORPLAN
# ==========================================================
initialize_floorplan \
    -core_utilization 0.50 \
    -core_offset {5 5 5 5} \
    -flip_first_row true

redirect -file reports/${DESIGN_NAME}_ports.rpt {
    report_ports
}

# ==========================================================
# PIN PLACEMENT
# ==========================================================
set_block_pin_constraints -self -allowed_layers {M3 M4}

catch {set_individual_pin_constraints -ports [get_ports {A[*] Cin}] -side 1}
catch {set_individual_pin_constraints -ports [get_ports {B[*]}]     -side 2}
catch {set_individual_pin_constraints -ports [get_ports {Sum[*]}]   -side 3}
catch {set_individual_pin_constraints -ports [get_ports {Cout}]     -side 4}

place_pins -self

catch {
    redirect -file reports/${DESIGN_NAME}_pin_placement.rpt {
        report_pin_placement
    }
}

# ==========================================================
# POWER / GROUND
# ==========================================================
if {[sizeof_collection [get_nets VDD -quiet]] == 0} {
    create_net -power VDD
}

if {[sizeof_collection [get_nets VSS -quiet]] == 0} {
    create_net -ground VSS
}

connect_pg_net -automatic

save_block -as ${DESIGN_NAME}_floorplan

# ==========================================================
# PLACEMENT
# ==========================================================
place_opt

redirect -file reports/${DESIGN_NAME}_placement_qor.rpt {
    report_qor
}

save_block -as ${DESIGN_NAME}_placed

puts "INFO: Skipping CTS because adders are combinational."

# ==========================================================
# ROUTING
# ==========================================================
route_auto
route_opt
route_detail

save_block -as ${DESIGN_NAME}_routed

# ==========================================================
# FINAL TIMING / REPORTS
# ==========================================================
update_timing

catch {
    redirect -file reports/${DESIGN_NAME}_check_routes.rpt {
        check_routes
    }
}

catch {
    redirect -file reports/${DESIGN_NAME}_qor_final.rpt {
        report_qor
    }
}

catch {
    redirect -file reports/${DESIGN_NAME}_timing_final.rpt {
        report_timing -delay_type max -max_paths 20
    }
}

catch {
    redirect -file reports/${DESIGN_NAME}_area_final.rpt {
   
    report_utilization
     
     }
}

catch {
    redirect -file reports/${DESIGN_NAME}_power_final.rpt {
        report_power
    }
}
# ==========================================================
# WRITE OUTPUTS
# ==========================================================
write_verilog output/${DESIGN_NAME}_icc2.v
write_sdc -output output/${DESIGN_NAME}_icc2.sdc
write_def output/${DESIGN_NAME}_icc2.def
write_parasitics -format spef -output output/${DESIGN_NAME}.spef

save_block -as ${DESIGN_NAME}_final
