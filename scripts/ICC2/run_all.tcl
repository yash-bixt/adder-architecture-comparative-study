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
#
# Revision History:
# Date          By                     Change Notes
# ------------ ---------------------- ------------------------------------------
# Apr 1 2026  Yash Sharma          Original.
#
################################################################################
############################################################
# MASTER SCRIPT : RUN ALL ADDERS
############################################################

set designs {
    {rcla32          rcla_32             rcla32_synth.v}
    {hybrid_rcla32   hybrid_rcla32       hybrid_rcla32_synth.v}
    {csla32_bec      csla32_bec          csla32_bec_synth.v}
    {csla32_nobec    csla32_nobec_flat   csla32_nobec_synth.v}
    {brent_kung_32   brent_kung_32       brent_kung_32_synth.v}
    {hca32           han_carlson_32      hca32_synth.v}
    {ksa32           kogge_stone_32      ksa32_synth.v}
}
set ROOT_DIR [pwd]

foreach entry $designs {

    set d         [lindex $entry 0]
    set top       [lindex $entry 1]
    set netlist_v [lindex $entry 2]

    puts "\n====================================="
    puts "Starting folder : $d"
    puts "Top module      : $top"
    puts "====================================="

    if {![file exists $d]} {
        puts "ERROR: Directory $d not found, skipping..."
        continue
    }

    cd $d

    set DESIGN_NAME $d
    set DESIGN_TOP  $top
    set LIB_NAME    "${d}_lib"
    set NETLIST     "./netlist/$netlist_v"
    set SDC         "./sdc/${d}_final.sdc"

    if {![file exists $NETLIST]} {
        puts "ERROR: Netlist $NETLIST not found, skipping..."
        cd $ROOT_DIR
        continue
    }

    if {![file exists $SDC]} {
        puts "ERROR: SDC $SDC not found, skipping..."
        cd $ROOT_DIR
        continue
    }

    if {[catch {source ../gen3.tcl} result]} {
        puts "ERROR: ICC2 failed for $d"
        puts $result
        cd $ROOT_DIR
        continue
    }

    cd $ROOT_DIR
}

puts "All ICC2 runs attempted."
