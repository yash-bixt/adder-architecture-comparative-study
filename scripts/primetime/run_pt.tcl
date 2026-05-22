if {![info exists KEY]} {
    error "KEY not passed"
}

array set DESIGN_MAP {
    ksa32            kogge_stone_adder
    brent_kung_32    brent_kung_32
    hca32            han_carlson_32
    rcla32           rcla_32
    hybrid_rcla32    hybrid_rcla32
    csla32_bec       csla32_bec
    csla32_nobec     csla32_nobec_flat
}

set DESIGN $DESIGN_MAP($KEY)

set NETLIST "../${KEY}/netlist/${KEY}_final.v"
set SPEF    "../${KEY}/parasitics/${KEY}.spef"
set SDC     "../${KEY}/sdc/${KEY}_final.sdc"

array set LIBS {
    TT /home2/synopsys/libraries/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_tt1p05v25c.db
    SS /home2/synopsys/libraries/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ss0p95v125c.db
    FF /home2/synopsys/libraries/SAED32_EDK/lib/stdcell_rvt/db_nldm/saed32rvt_ff1p16vn40c.db
}

foreach CORNER {SS TT FF} {

    puts "================================================"
    puts "Running $KEY at $CORNER corner"
    puts "================================================"

    catch {remove_design -all}

    set target_library $LIBS($CORNER)
    set link_library "* $target_library"

    read_verilog $NETLIST
    current_design $DESIGN
    link

    read_sdc $SDC
    read_parasitics $SPEF

    update_timing

    set_app_var power_enable_analysis true
    set_app_var power_analysis_mode averaged

    set_switching_activity \
        -static_probability 0.5 \
        -toggle_rate 0.1 \
        [all_inputs]

    update_power

    file mkdir ../reports/$KEY
    file mkdir ../reports/$KEY/$CORNER

    redirect -file ../reports/$KEY/$CORNER/timing_max.rpt {
        report_timing -delay_type max -max_paths 10
    }

    redirect -file ../reports/$KEY/$CORNER/timing_min.rpt {
        report_timing -delay_type min -max_paths 10
    }

    redirect -file ../reports/$KEY/$CORNER/power.rpt {
        report_power
    }

    redirect -file ../reports/$KEY/$CORNER/design.rpt {
      report_design
    }


    redirect -file ../reports/$KEY/$CORNER/design.rpt {
        report_design
    }
}

exit
