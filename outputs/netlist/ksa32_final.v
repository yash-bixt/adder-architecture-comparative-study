// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:55:54
// Library Name: ksa32_lib
// Block Name: kogge_stone_32
// User Label: 
// Write Command: write_verilog output/ksa32_icc2.v
module kogge_stone_adder ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

wire ropt_net_61 ;
wire ropt_net_58 ;

INVX0_RVT U197 ( .A ( n250 ) , .Y ( n241 ) ) ;
INVX0_RVT U198 ( .A ( n272 ) , .Y ( n240 ) ) ;
OR2X2_RVT U199 ( .A1 ( n440 ) , .A2 ( n335 ) , .Y ( n420 ) ) ;
INVX0_RVT U200 ( .A ( n350 ) , .Y ( n231 ) ) ;
INVX0_RVT U201 ( .A ( n428 ) , .Y ( n253 ) ) ;
INVX0_RVT ctmTdsLR_1_133 ( .A ( n361 ) , .Y ( tmp_net49 ) ) ;
INVX0_RVT U203 ( .A ( n471 ) , .Y ( n263 ) ) ;
INVX0_RVT U204 ( .A ( n469 ) , .Y ( n264 ) ) ;
AO221X1_RVT ctmTdsLR_1_143 ( .A1 ( n484 ) , .A2 ( tmp_net52 ) , .A3 ( n484 ) , 
    .A4 ( n486 ) , .A5 ( n228 ) , .Y ( n216 ) ) ;
INVX0_RVT U206 ( .A ( n361 ) , .Y ( n228 ) ) ;
INVX0_RVT U207 ( .A ( n269 ) , .Y ( n238 ) ) ;
INVX0_RVT ctmTdsLR_1_79 ( .A ( n471 ) , .Y ( tmp_net24 ) ) ;
NOR2X0_RVT U209 ( .A1 ( n423 ) , .A2 ( n403 ) , .Y ( n406 ) ) ;
INVX0_RVT U210 ( .A ( n479 ) , .Y ( n327 ) ) ;
INVX0_RVT U211 ( .A ( n459 ) , .Y ( n237 ) ) ;
INVX0_RVT ctmTdsLR_1_139 ( .A ( n208 ) , .Y ( tmp_net52 ) ) ;
AOI22X1_RVT ctmTdsLR_1_130 ( .A1 ( popt_net_11 ) , .A2 ( n365 ) , 
    .A3 ( n364 ) , .A4 ( popt_net_12 ) , .Y ( popt_net_14 ) ) ;
INVX0_RVT ctmTdsLR_1_119 ( .A ( n459 ) , .Y ( tmp_net42 ) ) ;
INVX0_RVT U215 ( .A ( n227 ) , .Y ( n362 ) ) ;
AO22X1_RVT ctmTdsLR_1_147 ( .A1 ( n209 ) , .A2 ( n245 ) , .A3 ( n478 ) , 
    .A4 ( popt_net_6 ) , .Y ( tmp_net53 ) ) ;
INVX0_RVT U217 ( .A ( n258 ) , .Y ( n256 ) ) ;
OR3X2_RVT ctmTdsLR_1_141 ( .A1 ( n432 ) , .A2 ( n431 ) , .A3 ( n247 ) , 
    .Y ( n245 ) ) ;
XOR3X1_RVT U219 ( .A1 ( HFSNET_1 ) , .A2 ( HFSNET_3 ) , .A3 ( n426 ) , 
    .Y ( Sum[9] ) ) ;
OAI221X1_RVT ctmTdsLR_1_99 ( .A1 ( n199 ) , .A2 ( n418 ) , .A3 ( n487 ) , 
    .A4 ( n488 ) , .A5 ( n216 ) , .Y ( Cout ) ) ;
INVX0_RVT ctmTdsLR_1_100 ( .A ( n483 ) , .Y ( tmp_net32 ) ) ;
OAI21X1_RVT U222 ( .A1 ( n232 ) , .A2 ( n350 ) , .A3 ( n200 ) , .Y ( n197 ) ) ;
OAI21X1_RVT U223 ( .A1 ( n210 ) , .A2 ( n371 ) , .A3 ( n238 ) , .Y ( n198 ) ) ;
AOI221X1_RVT ctmTdsLR_1_142 ( .A1 ( n426 ) , .A2 ( HFSNET_3 ) , .A3 ( n426 ) , 
    .A4 ( HFSNET_1 ) , .A5 ( n265 ) , .Y ( n480 ) ) ;
INVX0_RVT ctmTdsLR_2_101 ( .A ( n217 ) , .Y ( tmp_net33 ) ) ;
OAI21X1_RVT ctmTdsLR_1_131 ( .A1 ( n475 ) , .A2 ( n476 ) , .A3 ( n474 ) , 
    .Y ( tmp_net48 ) ) ;
AOI21X1_RVT ctmTdsLR_1_52 ( .A1 ( n481 ) , .A2 ( tmp_net19 ) , .A3 ( n245 ) , 
    .Y ( n212 ) ) ;
AOI221X1_RVT ctmTdsLR_2_80 ( .A1 ( n456 ) , .A2 ( A[23] ) , .A3 ( n456 ) , 
    .A4 ( B[23] ) , .A5 ( tmp_net24 ) , .Y ( n200 ) ) ;
INVX0_RVT ctmTdsLR_1_105 ( .A ( n416 ) , .Y ( tmp_net35 ) ) ;
OR3X2_RVT ctmTdsLR_1_144 ( .A1 ( n483 ) , .A2 ( n264 ) , .A3 ( n258 ) , 
    .Y ( n217 ) ) ;
AO221X1_RVT ctmTdsLR_3_102 ( .A1 ( tmp_net32 ) , .A2 ( n260 ) , .A3 ( n470 ) , 
    .A4 ( n255 ) , .A5 ( tmp_net33 ) , .Y ( n485 ) ) ;
AOI21X2_RVT U232 ( .A1 ( n420 ) , .A2 ( n345 ) , .A3 ( n344 ) , .Y ( n206 ) ) ;
NAND2X0_RVT ctmTdsLR_2_106 ( .A1 ( n467 ) , .A2 ( tmp_net35 ) , .Y ( n469 ) ) ;
INVX0_RVT ctmTdsLR_1_107 ( .A ( n412 ) , .Y ( tmp_net36 ) ) ;
NAND2X0_RVT U235 ( .A1 ( A[15] ) , .A2 ( B[15] ) , .Y ( n209 ) ) ;
OR2X1_RVT U236 ( .A1 ( n373 ) , .A2 ( n372 ) , .Y ( n210 ) ) ;
OR3X2_RVT ctmTdsLR_2_134 ( .A1 ( tmp_net49 ) , .A2 ( n355 ) , .A3 ( n486 ) , 
    .Y ( n199 ) ) ;
INVX0_RVT ctmTdsLR_1_55 ( .A ( n400 ) , .Y ( tmp_net22 ) ) ;
INVX0_RVT ctmTdsLR_1_135 ( .A ( n207 ) , .Y ( tmp_net50 ) ) ;
DELLN1X2_RVT ropt_h_inst_149 ( .A ( ropt_net_54 ) , .Y ( Sum[0] ) ) ;
AO21X1_RVT U241 ( .A1 ( n388 ) , .A2 ( n271 ) , .A3 ( n270 ) , .Y ( n215 ) ) ;
AO221X1_RVT ctmTdsLR_2_148 ( .A1 ( popt_net_6 ) , .A2 ( n479 ) , 
    .A3 ( popt_net_6 ) , .A4 ( n480 ) , .A5 ( tmp_net53 ) , .Y ( n443 ) ) ;
NBUFFX2_RVT ropt_h_inst_150 ( .A ( A[8] ) , .Y ( ropt_net_55 ) ) ;
NOR3X0_RVT U244 ( .A1 ( n329 ) , .A2 ( n207 ) , .A3 ( n403 ) , .Y ( n218 ) ) ;
OR2X1_RVT U245 ( .A1 ( n219 ) , .A2 ( n218 ) , .Y ( n435 ) ) ;
OA21X1_RVT ctmTdsLR_1_53 ( .A1 ( n329 ) , .A2 ( n403 ) , .A3 ( tmp_net18 ) , 
    .Y ( tmp_net21 ) ) ;
XNOR2X1_RVT ctmTdsLR_2_54 ( .A1 ( tmp_net21 ) , .A2 ( n410 ) , 
    .Y ( Sum[14] ) ) ;
XOR3X1_RVT ctmTdsLR_1_146 ( .A1 ( ropt_net_60 ) , .A2 ( ropt_net_57 ) , 
    .A3 ( n491 ) , .Y ( Sum[10] ) ) ;
AO222X1_RVT ctmTdsLR_2_136 ( .A1 ( tmp_net50 ) , .A2 ( n410 ) , 
    .A3 ( tmp_net50 ) , .A4 ( n431 ) , .A5 ( tmp_net50 ) , .A6 ( n330 ) , 
    .Y ( n219 ) ) ;
AO221X1_RVT ctmTdsLR_2_56 ( .A1 ( Cin ) , .A2 ( B[0] ) , .A3 ( Cin ) , 
    .A4 ( A[0] ) , .A5 ( tmp_net22 ) , .Y ( n367 ) ) ;
NAND2X0_RVT ctmTdsLR_2_108 ( .A1 ( n453 ) , .A2 ( tmp_net36 ) , .Y ( n459 ) ) ;
NBUFFX2_RVT ropt_h_inst_151 ( .A ( B[7] ) , .Y ( ropt_net_56 ) ) ;
NOR3X0_RVT ctmTdsLR_1_45 ( .A1 ( n444 ) , .A2 ( n219 ) , .A3 ( n218 ) , 
    .Y ( n335 ) ) ;
INVX0_RVT ctmTdsLR_1_46 ( .A ( n330 ) , .Y ( tmp_net18 ) ) ;
NBUFFX2_RVT ropt_h_inst_152 ( .A ( B[10] ) , .Y ( ropt_net_57 ) ) ;
INVX0_RVT ctmTdsLR_1_109 ( .A ( n419 ) , .Y ( tmp_net37 ) ) ;
AND2X1_RVT U257 ( .A1 ( n231 ) , .A2 ( n236 ) , .Y ( n230 ) ) ;
OA21X1_RVT ctmTdsLR_2_132 ( .A1 ( n260 ) , .A2 ( n476 ) , .A3 ( tmp_net48 ) , 
    .Y ( Sum[27] ) ) ;
AND2X1_RVT U259 ( .A1 ( n345 ) , .A2 ( n237 ) , .Y ( n236 ) ) ;
INVX0_RVT ctmTdsLR_1_137 ( .A ( n468 ) , .Y ( tmp_net51 ) ) ;
AO221X1_RVT ctmTdsLR_2_138 ( .A1 ( n473 ) , .A2 ( n473 ) , .A3 ( n263 ) , 
    .A4 ( n264 ) , .A5 ( tmp_net51 ) , .Y ( n258 ) ) ;
NAND2X0_RVT ctmTdsLR_1_57 ( .A1 ( A[9] ) , .A2 ( B[9] ) , .Y ( tmp_net23 ) ) ;
NAND2X0_RVT ctmTdsLR_2_58 ( .A1 ( tmp_net23 ) , .A2 ( n266 ) , .Y ( n265 ) ) ;
NBUFFX2_RVT ropt_h_inst_153 ( .A ( ropt_net_58 ) , .Y ( Sum[7] ) ) ;
INVX0_RVT ctmTdsLR_1_42 ( .A ( popt_net_17 ) , .Y ( n227 ) ) ;
NAND2X0_RVT ctmTdsLR_2_110 ( .A1 ( tmp_net37 ) , .A2 ( n439 ) , .Y ( n444 ) ) ;
INVX0_RVT ctmTdsLR_1_111 ( .A ( n446 ) , .Y ( tmp_net38 ) ) ;
NBUFFX2_RVT ropt_h_inst_154 ( .A ( B[8] ) , .Y ( ropt_net_59 ) ) ;
NBUFFX2_RVT ropt_h_inst_155 ( .A ( A[10] ) , .Y ( ropt_net_60 ) ) ;
NOR2X0_RVT U270 ( .A1 ( n253 ) , .A2 ( n251 ) , .Y ( n247 ) ) ;
NBUFFX2_RVT ropt_h_inst_156 ( .A ( ropt_net_61 ) , .Y ( Sum[8] ) ) ;
OR2X1_RVT U272 ( .A1 ( n252 ) , .A2 ( n251 ) , .Y ( n250 ) ) ;
OR2X1_RVT U273 ( .A1 ( n430 ) , .A2 ( n429 ) , .Y ( n251 ) ) ;
AND2X1_RVT U274 ( .A1 ( n253 ) , .A2 ( n423 ) , .Y ( n252 ) ) ;
AND2X1_RVT ctmTdsLR_2_112 ( .A1 ( tmp_net38 ) , .A2 ( n421 ) , .Y ( n345 ) ) ;
AND2X1_RVT U277 ( .A1 ( n256 ) , .A2 ( n280 ) , .Y ( n255 ) ) ;
AOI21X1_RVT ctmTdsLR_2_120 ( .A1 ( tmp_net42 ) , .A2 ( n344 ) , .A3 ( n205 ) , 
    .Y ( n232 ) ) ;
INVX0_RVT ctmTdsLR_1_121 ( .A ( n210 ) , .Y ( tmp_net43 ) ) ;
OR2X1_RVT U282 ( .A1 ( n474 ) , .A2 ( n475 ) , .Y ( n260 ) ) ;
INVX0_RVT ctmTdsLR_1_81 ( .A ( n349 ) , .Y ( tmp_net25 ) ) ;
NAND2X0_RVT U285 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .Y ( n266 ) ) ;
NOR2X0_RVT U286 ( .A1 ( B[6] ) , .A2 ( A[6] ) , .Y ( n395 ) ) ;
NOR2X0_RVT U287 ( .A1 ( A[5] ) , .A2 ( B[5] ) , .Y ( n394 ) ) ;
NOR2X0_RVT U288 ( .A1 ( n395 ) , .A2 ( n394 ) , .Y ( n271 ) ) ;
NOR2X2_RVT U289 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .Y ( n383 ) ) ;
NOR2X0_RVT U290 ( .A1 ( A[3] ) , .A2 ( B[3] ) , .Y ( n378 ) ) ;
NOR2X0_RVT U291 ( .A1 ( n383 ) , .A2 ( n378 ) , .Y ( n389 ) ) ;
NAND2X0_RVT U292 ( .A1 ( n271 ) , .A2 ( n389 ) , .Y ( n272 ) ) ;
NOR2X0_RVT U293 ( .A1 ( A[2] ) , .A2 ( B[2] ) , .Y ( n373 ) ) ;
NOR2X0_RVT U294 ( .A1 ( B[1] ) , .A2 ( A[1] ) , .Y ( n372 ) ) ;
OA21X1_RVT ctmTdsLR_2_82 ( .A1 ( n346 ) , .A2 ( n347 ) , .A3 ( tmp_net25 ) , 
    .Y ( n205 ) ) ;
INVX0_RVT ctmTdsLR_1_83 ( .A ( n209 ) , .Y ( tmp_net26 ) ) ;
NAND2X0_RVT U297 ( .A1 ( A[0] ) , .A2 ( B[0] ) , .Y ( n400 ) ) ;
NAND2X0_RVT U298 ( .A1 ( A[1] ) , .A2 ( B[1] ) , .Y ( n370 ) ) ;
NAND2X0_RVT U299 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .Y ( n374 ) ) ;
OAI21X1_RVT U300 ( .A1 ( n370 ) , .A2 ( n373 ) , .A3 ( n374 ) , .Y ( n269 ) ) ;
NAND2X0_RVT U301 ( .A1 ( B[3] ) , .A2 ( A[3] ) , .Y ( n380 ) ) ;
NAND2X0_RVT U302 ( .A1 ( A[4] ) , .A2 ( B[4] ) , .Y ( n384 ) ) ;
OAI21X1_RVT U303 ( .A1 ( n380 ) , .A2 ( n383 ) , .A3 ( n384 ) , .Y ( n388 ) ) ;
NAND2X0_RVT U304 ( .A1 ( B[5] ) , .A2 ( A[5] ) , .Y ( n392 ) ) ;
NAND2X0_RVT U305 ( .A1 ( A[6] ) , .A2 ( B[6] ) , .Y ( n396 ) ) ;
OAI21X1_RVT U306 ( .A1 ( n392 ) , .A2 ( n395 ) , .A3 ( n396 ) , .Y ( n270 ) ) ;
AO221X1_RVT ctmTdsLR_2_84 ( .A1 ( n430 ) , .A2 ( A[15] ) , .A3 ( n430 ) , 
    .A4 ( B[15] ) , .A5 ( tmp_net26 ) , .Y ( n207 ) ) ;
INVX0_RVT ctmTdsLR_1_85 ( .A ( n280 ) , .Y ( tmp_net27 ) ) ;
AO221X1_RVT ctmTdsLR_2_86 ( .A1 ( n473 ) , .A2 ( A[27] ) , .A3 ( n473 ) , 
    .A4 ( B[27] ) , .A5 ( tmp_net27 ) , .Y ( n208 ) ) ;
NAND2X0_RVT U310 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n356 ) ) ;
NAND2X0_RVT ctmTdsLR_1_113 ( .A1 ( n198 ) , .A2 ( n382 ) , .Y ( tmp_net39 ) ) ;
INVX0_RVT U313 ( .A ( n495 ) , .Y ( n422 ) ) ;
XOR2X1_RVT U314 ( .A1 ( B[29] ) , .A2 ( A[29] ) , .Y ( n497 ) ) ;
INVX0_RVT U315 ( .A ( n497 ) , .Y ( n277 ) ) ;
OR2X1_RVT U316 ( .A1 ( n422 ) , .A2 ( n277 ) , .Y ( n364 ) ) ;
XNOR2X1_RVT U317 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .Y ( n365 ) ) ;
OR2X1_RVT U318 ( .A1 ( n364 ) , .A2 ( n365 ) , .Y ( n486 ) ) ;
OA21X1_RVT ctmTdsLR_1_87 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n356 ) , 
    .Y ( n495 ) ) ;
INVX0_RVT ctmTdsLR_1_88 ( .A ( n306 ) , .Y ( tmp_net28 ) ) ;
OA21X1_RVT ctmTdsLR_2_89 ( .A1 ( n307 ) , .A2 ( n311 ) , .A3 ( tmp_net28 ) , 
    .Y ( n440 ) ) ;
AND2X1_RVT U322 ( .A1 ( A[26] ) , .A2 ( B[26] ) , .Y ( n473 ) ) ;
INVX0_RVT ctmTdsLR_1_115 ( .A ( n258 ) , .Y ( tmp_net40 ) ) ;
AND2X1_RVT U324 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .Y ( n483 ) ) ;
INVX0_RVT U325 ( .A ( n483 ) , .Y ( n280 ) ) ;
XNOR2X1_RVT U326 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .Y ( n474 ) ) ;
AO221X1_RVT ctmTdsLR_1_90 ( .A1 ( n441 ) , .A2 ( A[19] ) , .A3 ( n441 ) , 
    .A4 ( B[19] ) , .A5 ( n455 ) , .Y ( n344 ) ) ;
INVX0_RVT ctmTdsLR_1_91 ( .A ( n354 ) , .Y ( tmp_net29 ) ) ;
OAI21X1_RVT ctmTdsLR_2_92 ( .A1 ( n352 ) , .A2 ( n351 ) , .A3 ( tmp_net29 ) , 
    .Y ( n468 ) ) ;
OR2X1_RVT U330 ( .A1 ( n473 ) , .A2 ( n475 ) , .Y ( n417 ) ) ;
OR2X1_RVT U331 ( .A1 ( n474 ) , .A2 ( n417 ) , .Y ( n355 ) ) ;
AND2X1_RVT U332 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .Y ( n352 ) ) ;
OA21X1_RVT ctmTdsLR_1_93 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .A3 ( n400 ) , 
    .Y ( tmp_net30 ) ) ;
XOR2X1_RVT ctmTdsLR_2_94 ( .A1 ( tmp_net30 ) , .A2 ( Cin ) , 
    .Y ( ropt_net_54 ) ) ;
NAND2X0_RVT ctmTdsLR_1_95 ( .A1 ( n236 ) , .A2 ( n420 ) , .Y ( tmp_net31 ) ) ;
NOR2X0_RVT U336 ( .A1 ( n352 ) , .A2 ( n354 ) , .Y ( n467 ) ) ;
AND2X1_RVT ctmTdsLR_2_122 ( .A1 ( tmp_net43 ) , .A2 ( n367 ) , 
    .Y ( tmp_net44 ) ) ;
AND2X1_RVT U338 ( .A1 ( A[24] ) , .A2 ( B[24] ) , .Y ( n351 ) ) ;
AND2X1_RVT ctmTdsLR_2_96 ( .A1 ( tmp_net31 ) , .A2 ( n232 ) , .Y ( n414 ) ) ;
AO221X1_RVT ctmTdsLR_1_97 ( .A1 ( n457 ) , .A2 ( n458 ) , .A3 ( n457 ) , 
    .A4 ( n459 ) , .A5 ( popt_net_7 ) , .Y ( n470 ) ) ;
AOI221X1_RVT ctmTdsLR_1_98 ( .A1 ( n446 ) , .A2 ( n447 ) , .A3 ( n446 ) , 
    .A4 ( n448 ) , .A5 ( n454 ) , .Y ( Sum[19] ) ) ;
OR2X1_RVT U342 ( .A1 ( n351 ) , .A2 ( n289 ) , .Y ( n416 ) ) ;
AO221X1_RVT ctmTdsLR_3_123 ( .A1 ( n240 ) , .A2 ( n269 ) , .A3 ( n240 ) , 
    .A4 ( tmp_net44 ) , .A5 ( n215 ) , .Y ( n494 ) ) ;
OA21X1_RVT ctmTdsLR_2_116 ( .A1 ( popt_net_3 ) , .A2 ( n460 ) , 
    .A3 ( tmp_net40 ) , .Y ( n476 ) ) ;
INVX0_RVT ctmTdsLR_1_117 ( .A ( n470 ) , .Y ( tmp_net41 ) ) ;
AOI221X1_RVT ctmTdsLR_2_118 ( .A1 ( n461 ) , .A2 ( n460 ) , .A3 ( n461 ) , 
    .A4 ( n462 ) , .A5 ( tmp_net41 ) , .Y ( Sum[23] ) ) ;
AND2X1_RVT U347 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( n456 ) ) ;
INVX0_RVT ctmTdsLR_1_124 ( .A ( n386 ) , .Y ( tmp_net45 ) ) ;
NAND2X0_RVT U349 ( .A1 ( A[23] ) , .A2 ( B[23] ) , .Y ( n471 ) ) ;
XNOR2X1_RVT U350 ( .A1 ( A[23] ) , .A2 ( B[23] ) , .Y ( n461 ) ) ;
NAND2X0_RVT ctmTdsLR_2_125 ( .A1 ( tmp_net39 ) , .A2 ( n380 ) , 
    .Y ( tmp_net46 ) ) ;
MUX21X1_RVT ctmTdsLR_3_126 ( .A1 ( tmp_net45 ) , .A2 ( n386 ) , 
    .S0 ( tmp_net46 ) , .Y ( Sum[4] ) ) ;
INVX0_RVT ctmTdsLR_1_127 ( .A ( n488 ) , .Y ( tmp_net47 ) ) ;
OR2X1_RVT U354 ( .A1 ( n456 ) , .A2 ( n462 ) , .Y ( n413 ) ) ;
OR2X1_RVT U355 ( .A1 ( n461 ) , .A2 ( n413 ) , .Y ( n350 ) ) ;
AND2X1_RVT U356 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .Y ( n347 ) ) ;
MUX41X1_RVT ctmTdsLR_2_128 ( .A1 ( tmp_net47 ) , .A3 ( n488 ) , .A2 ( n488 ) , 
    .A4 ( tmp_net47 ) , .S0 ( n490 ) , .S1 ( n487 ) , .Y ( Sum[31] ) ) ;
NOR2X0_RVT U360 ( .A1 ( n347 ) , .A2 ( n349 ) , .Y ( n453 ) ) ;
AND2X1_RVT U362 ( .A1 ( A[20] ) , .A2 ( B[20] ) , .Y ( n346 ) ) ;
OR2X1_RVT U366 ( .A1 ( n346 ) , .A2 ( n301 ) , .Y ( n412 ) ) ;
AND2X1_RVT U371 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n307 ) ) ;
AND2X1_RVT U372 ( .A1 ( A[16] ) , .A2 ( B[16] ) , .Y ( n311 ) ) ;
NOR2X0_RVT U375 ( .A1 ( n307 ) , .A2 ( n306 ) , .Y ( n439 ) ) ;
OR2X1_RVT U380 ( .A1 ( n311 ) , .A2 ( n310 ) , .Y ( n419 ) ) ;
XNOR2X1_RVT U382 ( .A1 ( A[15] ) , .A2 ( B[15] ) , .Y ( n431 ) ) ;
AND2X1_RVT U383 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( n430 ) ) ;
OR2X1_RVT U387 ( .A1 ( n430 ) , .A2 ( n432 ) , .Y ( n410 ) ) ;
AND2X1_RVT U388 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .Y ( n319 ) ) ;
INVX0_RVT U389 ( .A ( n319 ) , .Y ( n317 ) ) ;
AND2X1_RVT U390 ( .A1 ( A[12] ) , .A2 ( B[12] ) , .Y ( n322 ) ) ;
INVX0_RVT U391 ( .A ( n322 ) , .Y ( n405 ) ) ;
AOI21X1_RVT U395 ( .A1 ( n317 ) , .A2 ( n405 ) , .A3 ( n318 ) , .Y ( n429 ) ) ;
INVX0_RVT U396 ( .A ( n429 ) , .Y ( n323 ) ) ;
OR2X1_RVT U397 ( .A1 ( n319 ) , .A2 ( n318 ) , .Y ( n408 ) ) ;
OR2X1_RVT U401 ( .A1 ( n322 ) , .A2 ( n407 ) , .Y ( n404 ) ) ;
OR2X1_RVT U402 ( .A1 ( n408 ) , .A2 ( n404 ) , .Y ( n428 ) ) ;
AND2X1_RVT U403 ( .A1 ( n323 ) , .A2 ( n428 ) , .Y ( n330 ) ) ;
AND2X1_RVT U404 ( .A1 ( A[11] ) , .A2 ( B[11] ) , .Y ( n423 ) ) ;
OR2X1_RVT U405 ( .A1 ( n423 ) , .A2 ( n429 ) , .Y ( n329 ) ) ;
FADDX2_RVT U408 ( .A ( ropt_net_59 ) , .B ( ropt_net_55 ) , .CI ( n326 ) , 
    .CO ( n426 ) , .S ( ropt_net_61 ) ) ;
FADDX1_RVT U409 ( .A ( HFSNET_3 ) , .B ( HFSNET_1 ) , .CI ( n426 ) , 
    .CO ( n491 ) ) ;
XNOR2X1_RVT U411 ( .A1 ( A[11] ) , .A2 ( B[11] ) , .Y ( n478 ) ) ;
OR3X1_RVT ctmTdsLR_2_23 ( .A1 ( n462 ) , .A2 ( n461 ) , .A3 ( n469 ) , 
    .Y ( popt_net_3 ) ) ;
XNOR2X1_RVT U417 ( .A1 ( A[19] ) , .A2 ( B[19] ) , .Y ( n446 ) ) ;
AND2X1_RVT U418 ( .A1 ( A[18] ) , .A2 ( B[18] ) , .Y ( n441 ) ) ;
NOR2X0_RVT U422 ( .A1 ( n441 ) , .A2 ( n447 ) , .Y ( n421 ) ) ;
AND2X1_RVT U429 ( .A1 ( A[19] ) , .A2 ( B[19] ) , .Y ( n455 ) ) ;
OA21X2_RVT U435 ( .A1 ( n469 ) , .A2 ( n415 ) , .A3 ( n468 ) , .Y ( n418 ) ) ;
INVX0_RVT U436 ( .A ( B[30] ) , .Y ( n360 ) ) ;
INVX0_RVT U437 ( .A ( A[30] ) , .Y ( n359 ) ) ;
INVX0_RVT U438 ( .A ( B[29] ) , .Y ( n358 ) ) ;
INVX0_RVT U439 ( .A ( A[29] ) , .Y ( n357 ) ) ;
FADDX1_RVT U440 ( .A ( n358 ) , .B ( n357 ) , .CI ( n356 ) , .CO ( n363 ) ) ;
FADDX1_RVT U441 ( .A ( n360 ) , .B ( n359 ) , .CI ( n363 ) , .CO ( n484 ) ) ;
OR2X1_RVT U442 ( .A1 ( B[31] ) , .A2 ( A[31] ) , .Y ( n361 ) ) ;
NAND3X0_RVT ctmTdsLR_1_34 ( .A1 ( popt_net_10 ) , .A2 ( popt_net_14 ) , 
    .A3 ( popt_net_15 ) , .Y ( Sum[30] ) ) ;
OA21X1_RVT ctmTdsLR_2_43 ( .A1 ( n355 ) , .A2 ( n418 ) , .A3 ( popt_net_16 ) , 
    .Y ( popt_net_17 ) ) ;
INVX0_RVT U445 ( .A ( n367 ) , .Y ( n371 ) ) ;
INVX0_RVT U446 ( .A ( n372 ) , .Y ( n368 ) ) ;
NAND2X0_RVT U447 ( .A1 ( n368 ) , .A2 ( n370 ) , .Y ( n369 ) ) ;
XOR2X1_RVT U448 ( .A1 ( n371 ) , .A2 ( n369 ) , .Y ( Sum[1] ) ) ;
OAI21X1_RVT U449 ( .A1 ( n372 ) , .A2 ( n371 ) , .A3 ( n370 ) , .Y ( n377 ) ) ;
INVX0_RVT U450 ( .A ( n373 ) , .Y ( n375 ) ) ;
NAND2X0_RVT U451 ( .A1 ( n375 ) , .A2 ( n374 ) , .Y ( n376 ) ) ;
XNOR2X1_RVT U452 ( .A1 ( n377 ) , .A2 ( n376 ) , .Y ( Sum[2] ) ) ;
INVX0_RVT U453 ( .A ( n378 ) , .Y ( n382 ) ) ;
NAND2X0_RVT U454 ( .A1 ( n382 ) , .A2 ( n380 ) , .Y ( n379 ) ) ;
XNOR2X1_RVT U455 ( .A1 ( n198 ) , .A2 ( n379 ) , .Y ( Sum[3] ) ) ;
INVX0_RVT U458 ( .A ( n383 ) , .Y ( n385 ) ) ;
NAND2X0_RVT U459 ( .A1 ( n385 ) , .A2 ( n384 ) , .Y ( n386 ) ) ;
AOI21X1_RVT U461 ( .A1 ( n198 ) , .A2 ( n389 ) , .A3 ( n388 ) , .Y ( n393 ) ) ;
INVX0_RVT U462 ( .A ( n394 ) , .Y ( n390 ) ) ;
NAND2X0_RVT U463 ( .A1 ( n390 ) , .A2 ( n392 ) , .Y ( n391 ) ) ;
XOR2X1_RVT U464 ( .A1 ( n393 ) , .A2 ( n391 ) , .Y ( Sum[5] ) ) ;
OAI21X1_RVT U465 ( .A1 ( n394 ) , .A2 ( n393 ) , .A3 ( n392 ) , .Y ( n399 ) ) ;
INVX0_RVT U466 ( .A ( n395 ) , .Y ( n397 ) ) ;
NAND2X0_RVT U467 ( .A1 ( n397 ) , .A2 ( n396 ) , .Y ( n398 ) ) ;
XNOR2X1_RVT U468 ( .A1 ( n399 ) , .A2 ( n398 ) , .Y ( Sum[6] ) ) ;
XOR2X1_RVT U472 ( .A1 ( n406 ) , .A2 ( n404 ) , .Y ( Sum[12] ) ) ;
OA21X1_RVT U473 ( .A1 ( n407 ) , .A2 ( n406 ) , .A3 ( n405 ) , .Y ( n409 ) ) ;
XOR2X1_RVT U474 ( .A1 ( n409 ) , .A2 ( n408 ) , .Y ( Sum[13] ) ) ;
NOR2X0_RVT ctmTdsLR_1_61 ( .A1 ( A[26] ) , .A2 ( B[26] ) , .Y ( n475 ) ) ;
XOR2X1_RVT U476 ( .A1 ( n206 ) , .A2 ( n412 ) , .Y ( Sum[20] ) ) ;
XOR2X1_RVT U477 ( .A1 ( n414 ) , .A2 ( n413 ) , .Y ( Sum[22] ) ) ;
XOR2X1_RVT U478 ( .A1 ( n415 ) , .A2 ( n416 ) , .Y ( Sum[24] ) ) ;
XOR2X1_RVT U479 ( .A1 ( n418 ) , .A2 ( n417 ) , .Y ( Sum[26] ) ) ;
XOR2X1_RVT U480 ( .A1 ( n435 ) , .A2 ( n419 ) , .Y ( Sum[16] ) ) ;
XOR2X1_RVT U481 ( .A1 ( n421 ) , .A2 ( n420 ) , .Y ( Sum[18] ) ) ;
XOR2X1_RVT U482 ( .A1 ( n362 ) , .A2 ( n422 ) , .Y ( Sum[28] ) ) ;
OR3X1_RVT U487 ( .A1 ( n479 ) , .A2 ( n478 ) , .A3 ( n480 ) , .Y ( n481 ) ) ;
INVX0_RVT U490 ( .A ( n435 ) , .Y ( n436 ) ) ;
AO222X1_RVT U491 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .A3 ( B[16] ) , 
    .A4 ( n436 ) , .A5 ( A[16] ) , .A6 ( n436 ) , .Y ( n438 ) ) ;
NAND2X0_RVT U492 ( .A1 ( n439 ) , .A2 ( n438 ) , .Y ( n437 ) ) ;
OA21X1_RVT U493 ( .A1 ( n439 ) , .A2 ( n438 ) , .A3 ( n437 ) , 
    .Y ( Sum[17] ) ) ;
OR2X1_RVT U494 ( .A1 ( n447 ) , .A2 ( n446 ) , .Y ( n445 ) ) ;
NOR2X0_RVT U495 ( .A1 ( n441 ) , .A2 ( n440 ) , .Y ( n442 ) ) ;
OA21X1_RVT U496 ( .A1 ( n444 ) , .A2 ( n443 ) , .A3 ( n442 ) , .Y ( n448 ) ) ;
NOR2X0_RVT U497 ( .A1 ( n445 ) , .A2 ( n448 ) , .Y ( n454 ) ) ;
INVX0_RVT U500 ( .A ( n206 ) , .Y ( n450 ) ) ;
AO222X1_RVT U501 ( .A1 ( B[20] ) , .A2 ( A[20] ) , .A3 ( B[20] ) , 
    .A4 ( n450 ) , .A5 ( A[20] ) , .A6 ( n450 ) , .Y ( n452 ) ) ;
NAND2X0_RVT U502 ( .A1 ( n453 ) , .A2 ( n452 ) , .Y ( n451 ) ) ;
OA21X1_RVT U503 ( .A1 ( n453 ) , .A2 ( n452 ) , .A3 ( n451 ) , 
    .Y ( Sum[21] ) ) ;
NOR2X2_RVT U504 ( .A1 ( n455 ) , .A2 ( n454 ) , .Y ( n458 ) ) ;
NOR2X0_RVT U505 ( .A1 ( n456 ) , .A2 ( n205 ) , .Y ( n457 ) ) ;
OA21X1_RVT U506 ( .A1 ( n459 ) , .A2 ( n458 ) , .A3 ( n457 ) , .Y ( n460 ) ) ;
OAI22X1_RVT ctmTdsLR_1_24 ( .A1 ( popt_net_4 ) , .A2 ( n335 ) , .A3 ( n230 ) , 
    .A4 ( n197 ) , .Y ( n415 ) ) ;
INVX0_RVT U510 ( .A ( n415 ) , .Y ( n464 ) ) ;
AO222X1_RVT U511 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( B[24] ) , 
    .A4 ( n464 ) , .A5 ( A[24] ) , .A6 ( n464 ) , .Y ( n466 ) ) ;
NAND2X0_RVT U512 ( .A1 ( n467 ) , .A2 ( n466 ) , .Y ( n465 ) ) ;
OA21X1_RVT U513 ( .A1 ( n467 ) , .A2 ( n466 ) , .A3 ( n465 ) , 
    .Y ( Sum[25] ) ) ;
OAI21X1_RVT U516 ( .A1 ( n480 ) , .A2 ( n479 ) , .A3 ( n478 ) , .Y ( n482 ) ) ;
AND2X1_RVT U517 ( .A1 ( n482 ) , .A2 ( n481 ) , .Y ( Sum[11] ) ) ;
OA21X1_RVT U518 ( .A1 ( n486 ) , .A2 ( n485 ) , .A3 ( n484 ) , .Y ( n490 ) ) ;
INVX0_RVT U519 ( .A ( B[31] ) , .Y ( n488 ) ) ;
INVX0_RVT U520 ( .A ( A[31] ) , .Y ( n487 ) ) ;
FADDX1_RVT U526 ( .A ( ropt_net_56 ) , .B ( A[7] ) , .CI ( n494 ) , 
    .CO ( n326 ) , .S ( ropt_net_58 ) ) ;
AO22X1_RVT U527 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n495 ) , 
    .A4 ( n227 ) , .Y ( n496 ) ) ;
HADDX1_RVT U528 ( .A0 ( n497 ) , .B0 ( n496 ) , .SO ( Sum[29] ) ) ;
NBUFFX2_RVT HFSBUF_77_1 ( .A ( A[9] ) , .Y ( HFSNET_1 ) ) ;
NBUFFX2_RVT HFSBUF_53_3 ( .A ( B[9] ) , .Y ( HFSNET_3 ) ) ;
NOR2X0_RVT ctmTdsLR_1_62 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .Y ( n354 ) ) ;
INVX0_RVT ctmTdsLR_1_48 ( .A ( n250 ) , .Y ( tmp_net19 ) ) ;
NOR2X0_RVT ctmTdsLR_1_63 ( .A1 ( A[24] ) , .A2 ( B[24] ) , .Y ( n289 ) ) ;
INVX0_RVT ctmTdsLR_1_50 ( .A ( n250 ) , .Y ( tmp_net20 ) ) ;
OA21X1_RVT ctmTdsLR_2_51 ( .A1 ( n428 ) , .A2 ( n481 ) , .A3 ( tmp_net20 ) , 
    .Y ( n433 ) ) ;
AO22X1_RVT ctmTdsLR_1_17 ( .A1 ( popt_net_0 ) , .A2 ( popt_net_1 ) , 
    .A3 ( popt_net_2 ) , .A4 ( n491 ) , .Y ( n403 ) ) ;
INVX0_RVT ctmTdsLR_2_18 ( .A ( n478 ) , .Y ( popt_net_0 ) ) ;
INVX0_RVT ctmTdsLR_3_19 ( .A ( n266 ) , .Y ( popt_net_1 ) ) ;
AND2X1_RVT ctmTdsLR_4_20 ( .A1 ( popt_net_0 ) , .A2 ( n327 ) , 
    .Y ( popt_net_2 ) ) ;
OR3X1_RVT ctmTdsLR_2_35 ( .A1 ( popt_net_9 ) , .A2 ( n364 ) , .A3 ( n362 ) , 
    .Y ( popt_net_10 ) ) ;
OR2X1_RVT ctmTdsLR_2_25 ( .A1 ( n440 ) , .A2 ( n197 ) , .Y ( popt_net_4 ) ) ;
AND2X1_RVT ctmTdsLR_3_28 ( .A1 ( n241 ) , .A2 ( n209 ) , .Y ( popt_net_6 ) ) ;
OR2X1_RVT ctmTdsLR_3_31 ( .A1 ( n462 ) , .A2 ( n461 ) , .Y ( popt_net_7 ) ) ;
INVX0_RVT ctmTdsLR_3_36 ( .A ( n365 ) , .Y ( popt_net_9 ) ) ;
INVX0_RVT ctmTdsLR_6_39 ( .A ( n363 ) , .Y ( popt_net_11 ) ) ;
AND2X1_RVT ctmTdsLR_7_40 ( .A1 ( popt_net_9 ) , .A2 ( n363 ) , 
    .Y ( popt_net_12 ) ) ;
NAND2X0_RVT ctmTdsLR_8_41 ( .A1 ( n362 ) , .A2 ( popt_net_12 ) , 
    .Y ( popt_net_15 ) ) ;
INVX0_RVT ctmTdsLR_3_44 ( .A ( n208 ) , .Y ( popt_net_16 ) ) ;
NOR2X0_RVT ctmTdsLR_1_65 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( n462 ) ) ;
NOR2X0_RVT ctmTdsLR_1_66 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .Y ( n349 ) ) ;
NOR2X0_RVT ctmTdsLR_1_67 ( .A1 ( A[20] ) , .A2 ( B[20] ) , .Y ( n301 ) ) ;
NOR2X0_RVT ctmTdsLR_1_68 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n306 ) ) ;
NOR2X0_RVT ctmTdsLR_1_69 ( .A1 ( A[16] ) , .A2 ( B[16] ) , .Y ( n310 ) ) ;
NOR2X0_RVT ctmTdsLR_1_70 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( n432 ) ) ;
NOR2X0_RVT ctmTdsLR_1_71 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .Y ( n318 ) ) ;
NOR2X0_RVT ctmTdsLR_1_72 ( .A1 ( A[12] ) , .A2 ( B[12] ) , .Y ( n407 ) ) ;
NOR2X0_RVT ctmTdsLR_1_73 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .Y ( n479 ) ) ;
NOR2X0_RVT ctmTdsLR_1_75 ( .A1 ( A[18] ) , .A2 ( B[18] ) , .Y ( n447 ) ) ;
AOI221X1_RVT ctmTdsLR_1_78 ( .A1 ( n431 ) , .A2 ( n432 ) , .A3 ( n431 ) , 
    .A4 ( n433 ) , .A5 ( n212 ) , .Y ( Sum[15] ) ) ;
endmodule


