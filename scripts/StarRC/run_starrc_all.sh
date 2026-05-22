#!/bin/bash

STARRC=/home2/synopsys/starrc/U-2022.12-SP3/bin/StarXtract
SAED=/home2/synopsys/libraries/SAED32_EDK

# folder:def-top-name
ADDERS="
brent_kung_32:brent_kung_32
csla32_bec:csla32_bec
csla32_nobec:csla32_nobec_flat
hca32:han_carlson_32
hybrid_rcla32:hybrid_rcla32
ksa32:kogge_stone_adder
rcla32:rcla_32
"

for item in $ADDERS
do
    folder=${item%%:*}
    block=${item##*:}

    echo "======================================"
    echo "Running StarRC for $folder"
    echo "BLOCK = $block"
    echo "======================================"

    cd /home2/MONSOON2025/ys538/our/extraction/$folder/run || exit 1

    mkdir -p ../output ../logs

    cat > starrc_cmd.tcl <<EOF
BLOCK: $block
LEF_FILE: $SAED/lib/oa/saed32_sram_lp_dual_oa/new/newtech.lef
LEF_FILE: $SAED/lib/stdcell_rvt/lef/saed32nm_rvt_1p9m.lef
TOP_DEF_FILE: ../${folder}_final.def
MAPPING_FILE: $SAED/tech/starrc/saed32nm_tf_itf_tluplus.map
TCAD_GRD_FILE: $SAED/tech/starrc/nominal/saed32nm_1p9m_nominal.nxtgrd
NETLIST_FORMAT: SPEF
NETLIST_FILE: ../output/${folder}.spef
EXTRACTION: RC
POWER_NETS: VDD VSS
DEF_USE_PINS: YES
SUMMARY_FILE: ../output/${folder}.summary
EOF

    $STARRC starrc_cmd.tcl | tee ../logs/${folder}_starrc.log

    echo "Checking output..."
    ls -lh ../output/${folder}.spef 2>/dev/null || echo "SPEF not generated for $folder"

    cd /home2/MONSOON2025/ys538/our/extraction
done
