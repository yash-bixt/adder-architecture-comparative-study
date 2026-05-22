// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:51:40
// Library Name: rcla32_lib
// Block Name: rcla_32
// User Label: 
// Write Command: write_verilog output/rcla32_icc2.v
module rcla_32 ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

wire ropt_net_205 ;
wire ropt_net_204 ;
wire ropt_net_195 ;
wire ropt_net_202 ;
wire ropt_net_203 ;
wire ropt_net_196 ;

FADDX1_RVT \intadd_6/U32 ( .A ( A[1] ) , .B ( ropt_net_187 ) , 
    .CI ( \intadd_6/n32 ) , .CO ( \intadd_6/n31 ) , .S ( ropt_net_196 ) ) ;
FADDX1_RVT \intadd_6/U31 ( .A ( A[2] ) , .B ( ropt_net_189 ) , 
    .CI ( \intadd_6/n31 ) , .CO ( \intadd_6/n30 ) , .S ( ropt_net_203 ) ) ;
FADDX1_RVT \intadd_6/U30 ( .A ( A[3] ) , .B ( ropt_net_192 ) , 
    .CI ( \intadd_6/n30 ) , .CO ( \intadd_6/n29 ) , .S ( ropt_net_202 ) ) ;
FADDX1_RVT \intadd_6/U29 ( .A ( A[4] ) , .B ( B[4] ) , .CI ( \intadd_6/n29 ) , 
    .CO ( \intadd_6/n28 ) , .S ( ropt_net_195 ) ) ;
XNOR3X1_RVT ctmTdsLR_1_553 ( .A1 ( popt_net_171 ) , .A2 ( B[8] ) , 
    .A3 ( \intadd_6/n25 ) , .Y ( Sum[8] ) ) ;
INVX0_RVT ctmTdsLR_1_528 ( .A ( popt_net_148 ) , .Y ( \intadd_6/n27 ) ) ;
AOI21X1_RVT ctmTdsLR_2_529 ( .A1 ( \intadd_6/n28 ) , .A2 ( popt_net_150 ) , 
    .A3 ( popt_net_151 ) , .Y ( popt_net_148 ) ) ;
AO21X1_RVT ctmTdsLR_1_563 ( .A1 ( popt_net_58 ) , .A2 ( \intadd_6/n14 ) , 
    .A3 ( popt_net_177 ) , .Y ( \intadd_6/n4 ) ) ;
NAND2X0_RVT ctmTdsLR_2_564 ( .A1 ( popt_net_61 ) , .A2 ( popt_net_60 ) , 
    .Y ( popt_net_177 ) ) ;
OR2X1_RVT ctmTdsLR_3_530 ( .A1 ( A[5] ) , .A2 ( B[5] ) , .Y ( popt_net_150 ) ) ;
FADDX1_RVT \intadd_6/U19 ( .A ( ropt_net_197 ) , .B ( ropt_net_181 ) , 
    .CI ( \intadd_6/n19 ) , .S ( Sum[14] ) ) ;
NAND2X0_RVT ctmTdsLR_1_490 ( .A1 ( popt_net_135 ) , .A2 ( popt_net_139 ) , 
    .Y ( Sum[26] ) ) ;
OR2X1_RVT ctmTdsLR_2_23 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( popt_net_4 ) ) ;
AO21X1_RVT ctmTdsLR_1_88 ( .A1 ( popt_net_52 ) , .A2 ( \intadd_6/n18 ) , 
    .A3 ( popt_net_53 ) , .Y ( \intadd_6/n12 ) ) ;
AOI21X2_RVT ctmTdsLR_1_393 ( .A1 ( popt_net_9 ) , .A2 ( \intadd_6/n12 ) , 
    .A3 ( popt_net_126 ) , .Y ( n119 ) ) ;
INVX0_RVT U33 ( .A ( B[18] ) , .Y ( n108 ) ) ;
INVX0_RVT U34 ( .A ( A[16] ) , .Y ( n87 ) ) ;
INVX0_RVT U35 ( .A ( B[16] ) , .Y ( n88 ) ) ;
INVX0_RVT U36 ( .A ( A[12] ) , .Y ( n115 ) ) ;
NAND2X0_RVT ctmTdsLR_1_270 ( .A1 ( popt_net_11 ) , .A2 ( popt_net_12 ) , 
    .Y ( tmp_net107 ) ) ;
INVX0_RVT U38 ( .A ( B[12] ) , .Y ( n116 ) ) ;
INVX0_RVT U39 ( .A ( A[18] ) , .Y ( n101 ) ) ;
NAND3X0_RVT ctmTdsLR_2_149 ( .A1 ( popt_net_65 ) , .A2 ( popt_net_11 ) , 
    .A3 ( popt_net_12 ) , .Y ( popt_net_83 ) ) ;
NAND3X0_RVT ctmTdsLR_1_13 ( .A1 ( n158 ) , .A2 ( n140 ) , .A3 ( n139 ) , 
    .Y ( \intadd_6/n32 ) ) ;
AND3X1_RVT ctmTdsLR_1_312 ( .A1 ( tmp_net121 ) , .A2 ( popt_net_11 ) , 
    .A3 ( popt_net_12 ) , .Y ( popt_net_19 ) ) ;
INVX0_RVT U43 ( .A ( n86 ) , .Y ( n82 ) ) ;
INVX0_RVT U44 ( .A ( n98 ) , .Y ( n95 ) ) ;
INVX0_RVT U45 ( .A ( n107 ) , .Y ( n103 ) ) ;
INVX0_RVT U46 ( .A ( n114 ) , .Y ( n110 ) ) ;
INVX0_RVT ctmTdsLR_1_289 ( .A ( n145 ) , .Y ( tmp_net115 ) ) ;
INVX0_RVT U48 ( .A ( n142 ) , .Y ( n130 ) ) ;
INVX0_RVT U49 ( .A ( n146 ) , .Y ( n120 ) ) ;
INVX0_RVT U50 ( .A ( n124 ) , .Y ( n118 ) ) ;
AO21X1_RVT ctmTdsLR_1_305 ( .A1 ( n94 ) , .A2 ( n117 ) , .A3 ( n66 ) , 
    .Y ( n75 ) ) ;
OA222X1_RVT ctmTdsLR_1_316 ( .A1 ( n75 ) , .A2 ( n121 ) , .A3 ( n75 ) , 
    .A4 ( n94 ) , .A5 ( tmp_net122 ) , .A6 ( popt_net_9 ) , 
    .Y ( popt_net_33 ) ) ;
INVX0_RVT ctmTdsLR_1_291 ( .A ( n112 ) , .Y ( tmp_net116 ) ) ;
INVX0_RVT U54 ( .A ( n134 ) , .Y ( n128 ) ) ;
INVX0_RVT ctmTdsLR_1_314 ( .A ( popt_net_19 ) , .Y ( tmp_net122 ) ) ;
AND2X1_RVT ctmTdsLR_1_302 ( .A1 ( tmp_net115 ) , .A2 ( popt_net_12 ) , 
    .Y ( popt_net_98 ) ) ;
OA21X1_RVT ctmTdsLR_1_419 ( .A1 ( popt_net_83 ) , .A2 ( \intadd_6/n12 ) , 
    .A3 ( popt_net_85 ) , .Y ( \intadd_6/n8 ) ) ;
OAI22X1_RVT ctmTdsLR_2_292 ( .A1 ( n114 ) , .A2 ( tmp_net116 ) , 
    .A3 ( n115 ) , .A4 ( n116 ) , .Y ( n63 ) ) ;
XOR2X1_RVT U59 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .Y ( n85 ) ) ;
XNOR2X1_RVT U60 ( .A1 ( B[18] ) , .A2 ( A[18] ) , .Y ( n106 ) ) ;
XOR2X1_RVT U61 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n122 ) ) ;
AOI22X1_RVT ctmTdsLR_1_307 ( .A1 ( popt_net_98 ) , .A2 ( popt_net_102 ) , 
    .A3 ( n145 ) , .A4 ( tmp_net107 ) , .Y ( popt_net_104 ) ) ;
XOR2X1_RVT U63 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n132 ) ) ;
XOR3X1_RVT ctmTdsLR_1_174 ( .A1 ( ropt_net_180 ) , .A2 ( B[25] ) , 
    .A3 ( \intadd_6/n8 ) , .Y ( Sum[25] ) ) ;
NAND2X0_RVT ctmTdsLR_1_208 ( .A1 ( popt_net_95 ) , .A2 ( popt_net_105 ) , 
    .Y ( Sum[23] ) ) ;
XOR3X1_RVT ctmTdsLR_1_323 ( .A1 ( ropt_net_179 ) , .A2 ( A[31] ) , 
    .A3 ( \intadd_6/n2 ) , .Y ( Sum[31] ) ) ;
INVX0_RVT ctmTdsLR_1_308 ( .A ( popt_net_65 ) , .Y ( tmp_net120 ) ) ;
OA22X1_RVT ctmTdsLR_2_309 ( .A1 ( n121 ) , .A2 ( tmp_net120 ) , 
    .A3 ( popt_net_9 ) , .A4 ( popt_net_83 ) , .Y ( popt_net_85 ) ) ;
INVX0_RVT ctmTdsLR_1_310 ( .A ( n75 ) , .Y ( tmp_net121 ) ) ;
AOI21X1_RVT U70 ( .A1 ( n157 ) , .A2 ( ZBUF_32_3 ) , .A3 ( n112 ) , 
    .Y ( n67 ) ) ;
AND2X1_RVT ctmTdsLR_2_89 ( .A1 ( popt_net_13 ) , .A2 ( popt_net_6 ) , 
    .Y ( popt_net_52 ) ) ;
NAND2X0_RVT ctmTdsLR_2_394 ( .A1 ( popt_net_11 ) , .A2 ( popt_net_12 ) , 
    .Y ( popt_net_126 ) ) ;
OR2X1_RVT U73 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .Y ( n70 ) ) ;
NAND2X0_RVT U74 ( .A1 ( A[25] ) , .A2 ( B[25] ) , .Y ( n71 ) ) ;
INVX0_RVT ctmTdsLR_1_317 ( .A ( popt_net_8 ) , .Y ( tmp_net123 ) ) ;
NAND2X0_RVT ctmTdsLR_2_318 ( .A1 ( popt_net_19 ) , .A2 ( tmp_net123 ) , 
    .Y ( popt_net_41 ) ) ;
NAND2X0_RVT U77 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n74 ) ) ;
AO21X1_RVT ctmTdsLR_1_336 ( .A1 ( popt_net_124 ) , .A2 ( \intadd_6/n22 ) , 
    .A3 ( popt_net_125 ) , .Y ( \intadd_6/n14 ) ) ;
INVX0_RVT ctmTdsLR_1_293 ( .A ( n105 ) , .Y ( tmp_net117 ) ) ;
OAI22X1_RVT ctmTdsLR_2_294 ( .A1 ( n107 ) , .A2 ( tmp_net117 ) , 
    .A3 ( n108 ) , .A4 ( n101 ) , .Y ( n64 ) ) ;
INVX0_RVT ctmTdsLR_1_295 ( .A ( n84 ) , .Y ( tmp_net118 ) ) ;
AND2X1_RVT ctmTdsLR_3_74 ( .A1 ( popt_net_33 ) , .A2 ( popt_net_6 ) , 
    .Y ( popt_net_42 ) ) ;
AO21X1_RVT U83 ( .A1 ( ZBUF_32_3 ) , .A2 ( n80 ) , .A3 ( n79 ) , 
    .Y ( \intadd_6/n19 ) ) ;
AO22X1_RVT U84 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .A3 ( n70 ) , .A4 ( n63 ) , 
    .Y ( n79 ) ) ;
OAI22X1_RVT ctmTdsLR_2_296 ( .A1 ( n86 ) , .A2 ( tmp_net118 ) , .A3 ( n88 ) , 
    .A4 ( n87 ) , .Y ( n65 ) ) ;
AND2X1_RVT U86 ( .A1 ( n109 ) , .A2 ( n70 ) , .Y ( n80 ) ) ;
AO21X1_RVT U87 ( .A1 ( ZBUF_28_3 ) , .A2 ( n81 ) , .A3 ( n65 ) , 
    .Y ( \intadd_6/n16 ) ) ;
AND2X1_RVT U88 ( .A1 ( n154 ) , .A2 ( n82 ) , .Y ( n81 ) ) ;
AND2X1_RVT U89 ( .A1 ( B[15] ) , .A2 ( A[15] ) , .Y ( n84 ) ) ;
AND2X1_RVT ctmTdsLR_2_337 ( .A1 ( popt_net_46 ) , .A2 ( popt_net_13 ) , 
    .Y ( popt_net_124 ) ) ;
AND2X1_RVT U91 ( .A1 ( n88 ) , .A2 ( n87 ) , .Y ( n86 ) ) ;
XOR3X1_RVT ctmTdsLR_1_155 ( .A1 ( ropt_net_194 ) , .A2 ( B[30] ) , 
    .A3 ( popt_net_86 ) , .Y ( Sum[30] ) ) ;
AO21X1_RVT ctmTdsLR_3_338 ( .A1 ( popt_net_13 ) , .A2 ( popt_net_47 ) , 
    .A3 ( popt_net_14 ) , .Y ( popt_net_125 ) ) ;
OR2X1_RVT ctmTdsLR_3_397 ( .A1 ( popt_net_131 ) , .A2 ( popt_net_81 ) , 
    .Y ( popt_net_132 ) ) ;
AO21X1_RVT ctmTdsLR_2_156 ( .A1 ( popt_net_2 ) , .A2 ( \intadd_6/n4 ) , 
    .A3 ( popt_net_3 ) , .Y ( popt_net_86 ) ) ;
AND2X1_RVT ctmTdsLR_4_398 ( .A1 ( popt_net_128 ) , .A2 ( popt_net_130 ) , 
    .Y ( popt_net_131 ) ) ;
AND2X1_RVT U98 ( .A1 ( n144 ) , .A2 ( n95 ) , .Y ( n94 ) ) ;
NAND2X0_RVT ctmTdsLR_2_209 ( .A1 ( popt_net_94 ) , .A2 ( ZBUF_108_3 ) , 
    .Y ( popt_net_95 ) ) ;
NAND2X0_RVT ctmTdsLR_5_399 ( .A1 ( A[26] ) , .A2 ( popt_net_127 ) , 
    .Y ( popt_net_128 ) ) ;
INVX0_RVT ctmTdsLR_6_400 ( .A ( B[26] ) , .Y ( popt_net_127 ) ) ;
AND2X1_RVT U102 ( .A1 ( n152 ) , .A2 ( n103 ) , .Y ( n102 ) ) ;
AND2X1_RVT U103 ( .A1 ( ropt_net_188 ) , .A2 ( A[17] ) , .Y ( n105 ) ) ;
AO21X1_RVT ctmTdsLR_1_75 ( .A1 ( popt_net_43 ) , .A2 ( \intadd_6/n2 ) , 
    .A3 ( ropt_net_198 ) , .Y ( Cout ) ) ;
AND2X1_RVT U105 ( .A1 ( n108 ) , .A2 ( n101 ) , .Y ( n107 ) ) ;
AND2X1_RVT U106 ( .A1 ( n157 ) , .A2 ( n110 ) , .Y ( n109 ) ) ;
AND2X1_RVT U107 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n112 ) ) ;
OAI21X1_RVT ctmTdsLR_1_297 ( .A1 ( n71 ) , .A2 ( n98 ) , .A3 ( n74 ) , 
    .Y ( n66 ) ) ;
AND2X1_RVT U109 ( .A1 ( n116 ) , .A2 ( n115 ) , .Y ( n114 ) ) ;
AO22X1_RVT U110 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n72 ) , .A4 ( n124 ) , 
    .Y ( n117 ) ) ;
AO21X1_RVT ctmTdsLR_3_90 ( .A1 ( popt_net_14 ) , .A2 ( popt_net_6 ) , 
    .A3 ( popt_net_8 ) , .Y ( popt_net_53 ) ) ;
AND2X1_RVT U112 ( .A1 ( n146 ) , .A2 ( n72 ) , .Y ( n121 ) ) ;
NAND3X0_RVT ctmTdsLR_1_91 ( .A1 ( popt_net_54 ) , .A2 ( popt_net_56 ) , 
    .A3 ( popt_net_57 ) , .Y ( Sum[28] ) ) ;
AND2X1_RVT U114 ( .A1 ( A[23] ) , .A2 ( B[23] ) , .Y ( n124 ) ) ;
NAND2X0_RVT ctmTdsLR_7_401 ( .A1 ( B[26] ) , .A2 ( popt_net_129 ) , 
    .Y ( popt_net_130 ) ) ;
AO21X1_RVT ctmTdsLR_1_104 ( .A1 ( popt_net_63 ) , .A2 ( \intadd_6/n4 ) , 
    .A3 ( popt_net_64 ) , .Y ( \intadd_6/n2 ) ) ;
INVX0_RVT ctmTdsLR_8_402 ( .A ( A[26] ) , .Y ( popt_net_129 ) ) ;
AND2X1_RVT U119 ( .A1 ( n142 ) , .A2 ( n73 ) , .Y ( n131 ) ) ;
DELLN1X2_RVT ropt_h_inst_567 ( .A ( ropt_net_178 ) , .Y ( Sum[0] ) ) ;
AND2X1_RVT U121 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .Y ( n134 ) ) ;
INVX0_RVT ctmTdsLR_1_278 ( .A ( n85 ) , .Y ( tmp_net111 ) ) ;
NAND2X0_RVT ctmTdsLR_9_403 ( .A1 ( popt_net_134 ) , .A2 ( \intadd_6/n8 ) , 
    .Y ( popt_net_135 ) ) ;
OR2X1_RVT U124 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .Y ( n138 ) ) ;
AND2X1_RVT ctmTdsLR_10_404 ( .A1 ( n144 ) , .A2 ( popt_net_131 ) , 
    .Y ( popt_net_134 ) ) ;
NAND2X0_RVT U126 ( .A1 ( Cin ) , .A2 ( A[0] ) , .Y ( n139 ) ) ;
NAND2X0_RVT U127 ( .A1 ( Cin ) , .A2 ( B[0] ) , .Y ( n140 ) ) ;
AND2X1_RVT ctmTdsLR_1_298 ( .A1 ( tmp_net111 ) , .A2 ( n154 ) , 
    .Y ( popt_net_22 ) ) ;
AOI22X1_RVT ctmTdsLR_1_299 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n134 ) , 
    .A4 ( n73 ) , .Y ( popt_net_60 ) ) ;
NBUFFX2_RVT ZBUF_32_inst_507 ( .A ( \intadd_6/n22 ) , .Y ( ZBUF_32_3 ) ) ;
XOR3X1_RVT ctmTdsLR_1_140 ( .A1 ( A[19] ) , .A2 ( B[19] ) , 
    .A3 ( \intadd_6/n14 ) , .Y ( Sum[19] ) ) ;
AO22X1_RVT ctmTdsLR_1_264 ( .A1 ( popt_net_7 ) , .A2 ( popt_net_0 ) , 
    .A3 ( A[20] ) , .A4 ( B[20] ) , .Y ( popt_net_8 ) ) ;
MUX21X1_RVT ctmTdsLR_11_405 ( .A1 ( popt_net_136 ) , .A2 ( popt_net_137 ) , 
    .S0 ( popt_net_81 ) , .Y ( popt_net_138 ) ) ;
AND2X1_RVT ctmTdsLR_3_210 ( .A1 ( popt_net_9 ) , .A2 ( n145 ) , 
    .Y ( popt_net_94 ) ) ;
NAND3X0_RVT ctmTdsLR_1_280 ( .A1 ( n106 ) , .A2 ( n152 ) , 
    .A3 ( \intadd_6/n16 ) , .Y ( popt_net_35 ) ) ;
NAND2X0_RVT ctmTdsLR_1_300 ( .A1 ( n105 ) , .A2 ( n106 ) , .Y ( tmp_net119 ) ) ;
AO21X1_RVT ctmTdsLR_12_406 ( .A1 ( popt_net_130 ) , .A2 ( popt_net_128 ) , 
    .A3 ( n144 ) , .Y ( popt_net_136 ) ) ;
XNOR3X1_RVT ctmTdsLR_1_281 ( .A1 ( ropt_net_186 ) , .A2 ( ropt_net_200 ) , 
    .A3 ( n67 ) , .Y ( Sum[12] ) ) ;
OA221X1_RVT ctmTdsLR_2_301 ( .A1 ( n106 ) , .A2 ( popt_net_37 ) , 
    .A3 ( popt_net_36 ) , .A4 ( \intadd_6/n16 ) , .A5 ( tmp_net119 ) , 
    .Y ( popt_net_40 ) ) ;
OA21X1_RVT ctmTdsLR_4_211 ( .A1 ( popt_net_99 ) , .A2 ( ZBUF_108_3 ) , 
    .A3 ( popt_net_104 ) , .Y ( popt_net_105 ) ) ;
OR2X1_RVT U141 ( .A1 ( B[27] ) , .A2 ( A[27] ) , .Y ( n142 ) ) ;
OR2X1_RVT U142 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .Y ( n144 ) ) ;
XNOR2X1_RVT U143 ( .A1 ( B[23] ) , .A2 ( A[23] ) , .Y ( n145 ) ) ;
OR2X1_RVT U144 ( .A1 ( B[23] ) , .A2 ( A[23] ) , .Y ( n146 ) ) ;
OA21X1_RVT ctmTdsLR_2_491 ( .A1 ( popt_net_132 ) , .A2 ( \intadd_6/n8 ) , 
    .A3 ( popt_net_138 ) , .Y ( popt_net_139 ) ) ;
OR2X1_RVT U146 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .Y ( n148 ) ) ;
AO22X1_RVT U147 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .A3 ( ZBUF_108_3 ) , 
    .A4 ( n148 ) , .Y ( \intadd_6/n11 ) ) ;
INVX0_RVT ctmTdsLR_3_145 ( .A ( n71 ) , .Y ( popt_net_81 ) ) ;
OR2X1_RVT U149 ( .A1 ( B[19] ) , .A2 ( A[19] ) , .Y ( n150 ) ) ;
AO22X1_RVT U150 ( .A1 ( B[19] ) , .A2 ( A[19] ) , .A3 ( \intadd_6/n14 ) , 
    .A4 ( n150 ) , .Y ( \intadd_6/n13 ) ) ;
OR2X1_RVT U151 ( .A1 ( ropt_net_188 ) , .A2 ( A[17] ) , .Y ( n152 ) ) ;
XOR2X1_RVT ctmTdsLR_13_407 ( .A1 ( A[26] ) , .A2 ( B[26] ) , 
    .Y ( popt_net_137 ) ) ;
OR2X1_RVT U153 ( .A1 ( B[15] ) , .A2 ( A[15] ) , .Y ( n154 ) ) ;
NBUFFX2_RVT ZBUF_108_inst_508 ( .A ( \intadd_6/n12 ) , .Y ( ZBUF_108_3 ) ) ;
OR2X1_RVT U155 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n157 ) ) ;
XOR3X1_RVT U156 ( .A1 ( ZBUF_2_0 ) , .A2 ( Cin ) , .A3 ( A[0] ) , 
    .Y ( ropt_net_178 ) ) ;
INVX0_RVT ctmTdsLR_2_110 ( .A ( n117 ) , .Y ( popt_net_65 ) ) ;
NBUFFX2_RVT ropt_h_inst_568 ( .A ( B[31] ) , .Y ( ropt_net_179 ) ) ;
NBUFFX2_RVT ZBUF_2_inst_2 ( .A ( B[0] ) , .Y ( ZBUF_2_0 ) ) ;
NBUFFX2_RVT ropt_h_inst_569 ( .A ( A[25] ) , .Y ( ropt_net_180 ) ) ;
NAND2X0_RVT ctmTdsLR_5_212 ( .A1 ( popt_net_98 ) , .A2 ( popt_net_11 ) , 
    .Y ( popt_net_99 ) ) ;
NBUFFX2_RVT ropt_h_inst_570 ( .A ( B[14] ) , .Y ( ropt_net_181 ) ) ;
OR2X1_RVT ctmTdsLR_1_265 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n72 ) ) ;
OR2X1_RVT ctmTdsLR_1_266 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n73 ) ) ;
NBUFFX2_RVT ZBUF_28_inst_509 ( .A ( \intadd_6/n18 ) , .Y ( ZBUF_28_3 ) ) ;
NBUFFX2_RVT ropt_h_inst_571 ( .A ( B[13] ) , .Y ( ropt_net_182 ) ) ;
AO21X1_RVT ctmTdsLR_1_510 ( .A1 ( popt_net_140 ) , .A2 ( \intadd_6/n23 ) , 
    .A3 ( popt_net_141 ) , .Y ( \intadd_6/n22 ) ) ;
OR2X1_RVT ctmTdsLR_2_511 ( .A1 ( A[10] ) , .A2 ( B[10] ) , 
    .Y ( popt_net_140 ) ) ;
OR2X1_RVT ctmTdsLR_2_15 ( .A1 ( A[20] ) , .A2 ( B[20] ) , .Y ( popt_net_0 ) ) ;
AOI21X1_RVT ctmTdsLR_1_282 ( .A1 ( n109 ) , .A2 ( ZBUF_32_3 ) , .A3 ( n63 ) , 
    .Y ( tmp_net112 ) ) ;
XOR3X1_RVT ctmTdsLR_4_17 ( .A1 ( ropt_net_190 ) , .A2 ( ropt_net_201 ) , 
    .A3 ( \intadd_6/n13 ) , .Y ( Sum[20] ) ) ;
AND2X1_RVT ctmTdsLR_3_512 ( .A1 ( A[10] ) , .A2 ( B[10] ) , 
    .Y ( popt_net_141 ) ) ;
OR2X1_RVT ctmTdsLR_2_19 ( .A1 ( A[29] ) , .A2 ( B[29] ) , .Y ( popt_net_2 ) ) ;
AND2X1_RVT ctmTdsLR_3_20 ( .A1 ( A[29] ) , .A2 ( B[29] ) , .Y ( popt_net_3 ) ) ;
XOR3X1_RVT ctmTdsLR_4_21 ( .A1 ( ropt_net_193 ) , .A2 ( B[29] ) , 
    .A3 ( \intadd_6/n4 ) , .Y ( Sum[29] ) ) ;
XOR3X2_RVT ctmTdsLR_4_25 ( .A1 ( ropt_net_184 ) , .A2 ( B[22] ) , 
    .A3 ( \intadd_6/n11 ) , .Y ( Sum[22] ) ) ;
XOR3X1_RVT ctmTdsLR_4_513 ( .A1 ( A[10] ) , .A2 ( B[10] ) , 
    .A3 ( \intadd_6/n23 ) , .Y ( ropt_net_205 ) ) ;
OR3X1_RVT ctmTdsLR_2_92 ( .A1 ( n130 ) , .A2 ( n132 ) , .A3 ( ZINV_4_3 ) , 
    .Y ( popt_net_54 ) ) ;
AND2X1_RVT ctmTdsLR_2_28 ( .A1 ( n150 ) , .A2 ( popt_net_0 ) , 
    .Y ( popt_net_6 ) ) ;
XNOR3X1_RVT ctmTdsLR_2_283 ( .A1 ( ropt_net_182 ) , .A2 ( A[13] ) , 
    .A3 ( tmp_net112 ) , .Y ( Sum[13] ) ) ;
AND2X1_RVT ctmTdsLR_4_30 ( .A1 ( B[19] ) , .A2 ( A[19] ) , .Y ( popt_net_7 ) ) ;
AND2X1_RVT ctmTdsLR_3_34 ( .A1 ( popt_net_4 ) , .A2 ( n148 ) , 
    .Y ( popt_net_9 ) ) ;
NAND3X0_RVT ctmTdsLR_4_35 ( .A1 ( popt_net_4 ) , .A2 ( B[21] ) , 
    .A3 ( A[21] ) , .Y ( popt_net_11 ) ) ;
XOR3X1_RVT ctmTdsLR_1_284 ( .A1 ( ropt_net_185 ) , .A2 ( A[15] ) , 
    .A3 ( ZBUF_28_3 ) , .Y ( Sum[15] ) ) ;
AO21X1_RVT ctmTdsLR_5_514 ( .A1 ( popt_net_46 ) , .A2 ( \intadd_6/n22 ) , 
    .A3 ( popt_net_47 ) , .Y ( \intadd_6/n18 ) ) ;
AND2X1_RVT ctmTdsLR_2_38 ( .A1 ( n81 ) , .A2 ( n102 ) , .Y ( popt_net_13 ) ) ;
AO21X1_RVT ctmTdsLR_3_39 ( .A1 ( n65 ) , .A2 ( n102 ) , .A3 ( n64 ) , 
    .Y ( popt_net_14 ) ) ;
AND2X1_RVT ctmTdsLR_4_531 ( .A1 ( A[5] ) , .A2 ( B[5] ) , 
    .Y ( popt_net_151 ) ) ;
XNOR3X1_RVT ctmTdsLR_1_516 ( .A1 ( popt_net_142 ) , .A2 ( B[6] ) , 
    .A3 ( \intadd_6/n27 ) , .Y ( Sum[6] ) ) ;
INVX0_RVT ctmTdsLR_2_517 ( .A ( A[6] ) , .Y ( popt_net_142 ) ) ;
NAND2X0_RVT ctmTdsLR_1_46 ( .A1 ( popt_net_23 ) , .A2 ( popt_net_28 ) , 
    .Y ( Sum[16] ) ) ;
NAND2X0_RVT ctmTdsLR_2_47 ( .A1 ( popt_net_22 ) , .A2 ( ZBUF_28_3 ) , 
    .Y ( popt_net_23 ) ) ;
OAI22X1_RVT ctmTdsLR_3_518 ( .A1 ( popt_net_143 ) , .A2 ( popt_net_144 ) , 
    .A3 ( popt_net_145 ) , .A4 ( popt_net_149 ) , .Y ( \intadd_6/n25 ) ) ;
INVX0_RVT ctmTdsLR_4_519 ( .A ( A[7] ) , .Y ( popt_net_143 ) ) ;
INVX0_RVT ctmTdsLR_5_520 ( .A ( B[7] ) , .Y ( popt_net_144 ) ) ;
OA21X1_RVT ctmTdsLR_6_51 ( .A1 ( popt_net_25 ) , .A2 ( ZBUF_28_3 ) , 
    .A3 ( popt_net_27 ) , .Y ( popt_net_28 ) ) ;
NAND2X0_RVT ctmTdsLR_7_52 ( .A1 ( n85 ) , .A2 ( popt_net_24 ) , 
    .Y ( popt_net_25 ) ) ;
INVX0_RVT ctmTdsLR_8_53 ( .A ( n84 ) , .Y ( popt_net_24 ) ) ;
MUX21X1_RVT ctmTdsLR_9_54 ( .A1 ( popt_net_24 ) , .A2 ( n154 ) , .S0 ( n85 ) , 
    .Y ( popt_net_27 ) ) ;
AND2X1_RVT ctmTdsLR_6_521 ( .A1 ( popt_net_143 ) , .A2 ( popt_net_144 ) , 
    .Y ( popt_net_145 ) ) ;
OA22X1_RVT ctmTdsLR_7_522 ( .A1 ( popt_net_146 ) , .A2 ( popt_net_142 ) , 
    .A3 ( popt_net_147 ) , .A4 ( popt_net_148 ) , .Y ( popt_net_149 ) ) ;
INVX0_RVT ctmTdsLR_8_523 ( .A ( B[6] ) , .Y ( popt_net_146 ) ) ;
AND2X1_RVT ctmTdsLR_9_524 ( .A1 ( popt_net_142 ) , .A2 ( popt_net_146 ) , 
    .Y ( popt_net_147 ) ) ;
NBUFFX2_RVT ropt_h_inst_572 ( .A ( B[11] ) , .Y ( ropt_net_183 ) ) ;
NAND2X0_RVT ctmTdsLR_1_63 ( .A1 ( popt_net_35 ) , .A2 ( popt_net_40 ) , 
    .Y ( Sum[18] ) ) ;
INVX0_RVT ctmTdsLR_2_554 ( .A ( A[8] ) , .Y ( popt_net_171 ) ) ;
XNOR3X1_RVT ctmTdsLR_11_526 ( .A1 ( A[7] ) , .A2 ( B[7] ) , 
    .A3 ( popt_net_149 ) , .Y ( ropt_net_204 ) ) ;
XNOR3X1_RVT ctmTdsLR_5_532 ( .A1 ( popt_net_152 ) , .A2 ( B[5] ) , 
    .A3 ( \intadd_6/n28 ) , .Y ( Sum[5] ) ) ;
OR2X1_RVT ctmTdsLR_5_67 ( .A1 ( n105 ) , .A2 ( n106 ) , .Y ( popt_net_36 ) ) ;
INVX0_RVT ctmTdsLR_6_533 ( .A ( A[5] ) , .Y ( popt_net_152 ) ) ;
OR2X1_RVT ctmTdsLR_7_69 ( .A1 ( n152 ) , .A2 ( n105 ) , .Y ( popt_net_37 ) ) ;
AO21X1_RVT ctmTdsLR_3_555 ( .A1 ( popt_net_172 ) , .A2 ( popt_net_174 ) , 
    .A3 ( popt_net_175 ) , .Y ( \intadd_6/n23 ) ) ;
OR2X1_RVT ctmTdsLR_2_76 ( .A1 ( ropt_net_179 ) , .A2 ( A[31] ) , 
    .Y ( popt_net_43 ) ) ;
AND2X1_RVT ctmTdsLR_3_77 ( .A1 ( ropt_net_179 ) , .A2 ( A[31] ) , 
    .Y ( popt_net_44 ) ) ;
OR2X1_RVT ctmTdsLR_4_556 ( .A1 ( A[9] ) , .A2 ( B[9] ) , .Y ( popt_net_172 ) ) ;
AO22X1_RVT ctmTdsLR_5_557 ( .A1 ( popt_net_173 ) , .A2 ( \intadd_6/n25 ) , 
    .A3 ( A[8] ) , .A4 ( B[8] ) , .Y ( popt_net_174 ) ) ;
AND2X1_RVT ctmTdsLR_2_80 ( .A1 ( n80 ) , .A2 ( popt_net_45 ) , 
    .Y ( popt_net_46 ) ) ;
OR2X1_RVT ctmTdsLR_3_81 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( popt_net_45 ) ) ;
AO22X1_RVT ctmTdsLR_4_82 ( .A1 ( n79 ) , .A2 ( popt_net_45 ) , .A3 ( A[14] ) , 
    .A4 ( B[14] ) , .Y ( popt_net_47 ) ) ;
NAND3X0_RVT ctmTdsLR_1_83 ( .A1 ( popt_net_48 ) , .A2 ( popt_net_50 ) , 
    .A3 ( popt_net_51 ) , .Y ( Sum[24] ) ) ;
OR3X1_RVT ctmTdsLR_2_84 ( .A1 ( n120 ) , .A2 ( n122 ) , .A3 ( n119 ) , 
    .Y ( popt_net_48 ) ) ;
MUX21X1_RVT ctmTdsLR_3_85 ( .A1 ( n118 ) , .A2 ( popt_net_49 ) , 
    .S0 ( n122 ) , .Y ( popt_net_50 ) ) ;
NAND2X0_RVT ctmTdsLR_4_86 ( .A1 ( n120 ) , .A2 ( n118 ) , .Y ( popt_net_49 ) ) ;
NAND3X0_RVT ctmTdsLR_5_87 ( .A1 ( n119 ) , .A2 ( n118 ) , .A3 ( n122 ) , 
    .Y ( popt_net_51 ) ) ;
OA21X1_RVT ctmTdsLR_3_93 ( .A1 ( n128 ) , .A2 ( n132 ) , .A3 ( popt_net_55 ) , 
    .Y ( popt_net_56 ) ) ;
NAND3X0_RVT ctmTdsLR_4_94 ( .A1 ( n128 ) , .A2 ( n130 ) , .A3 ( n132 ) , 
    .Y ( popt_net_55 ) ) ;
NAND3X0_RVT ctmTdsLR_5_95 ( .A1 ( ZINV_4_3 ) , .A2 ( n128 ) , .A3 ( n132 ) , 
    .Y ( popt_net_57 ) ) ;
AND2X1_RVT ctmTdsLR_3_98 ( .A1 ( popt_net_42 ) , .A2 ( n131 ) , 
    .Y ( popt_net_58 ) ) ;
OR2X1_RVT ctmTdsLR_6_558 ( .A1 ( A[8] ) , .A2 ( B[8] ) , .Y ( popt_net_173 ) ) ;
NAND3X0_RVT ctmTdsLR_5_100 ( .A1 ( popt_net_33 ) , .A2 ( popt_net_41 ) , 
    .A3 ( n131 ) , .Y ( popt_net_61 ) ) ;
AND2X1_RVT ctmTdsLR_2_105 ( .A1 ( n138 ) , .A2 ( popt_net_2 ) , 
    .Y ( popt_net_63 ) ) ;
AO22X1_RVT ctmTdsLR_3_106 ( .A1 ( B[30] ) , .A2 ( A[30] ) , 
    .A3 ( popt_net_3 ) , .A4 ( n138 ) , .Y ( popt_net_64 ) ) ;
AND2X1_RVT ctmTdsLR_7_559 ( .A1 ( A[9] ) , .A2 ( B[9] ) , 
    .Y ( popt_net_175 ) ) ;
XNOR3X1_RVT ctmTdsLR_8_560 ( .A1 ( A[9] ) , .A2 ( B[9] ) , 
    .A3 ( popt_net_176 ) , .Y ( Sum[9] ) ) ;
INVX0_RVT ctmTdsLR_9_561 ( .A ( popt_net_174 ) , .Y ( popt_net_176 ) ) ;
NAND2X0_RVT ctmTdsLR_1_562 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .Y ( n158 ) ) ;
INVX0_RVT ctmTdsLR_13_220 ( .A ( popt_net_9 ) , .Y ( popt_net_102 ) ) ;
NOR2X0_RVT ctmTdsLR_1_267 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n98 ) ) ;
NBUFFX2_RVT ropt_h_inst_573 ( .A ( A[22] ) , .Y ( ropt_net_184 ) ) ;
AO22X1_RVT ctmTdsLR_1_123 ( .A1 ( popt_net_33 ) , .A2 ( popt_net_41 ) , 
    .A3 ( popt_net_42 ) , .A4 ( \intadd_6/n14 ) , .Y ( \intadd_6/n6 ) ) ;
NAND2X0_RVT ctmTdsLR_1_268 ( .A1 ( A[22] ) , .A2 ( B[22] ) , 
    .Y ( popt_net_12 ) ) ;
XOR3X1_RVT ctmTdsLR_1_137 ( .A1 ( A[21] ) , .A2 ( B[21] ) , 
    .A3 ( ZBUF_108_3 ) , .Y ( Sum[21] ) ) ;
NBUFFX2_RVT ropt_h_inst_574 ( .A ( B[15] ) , .Y ( ropt_net_185 ) ) ;
NBUFFX2_RVT ropt_h_inst_575 ( .A ( B[12] ) , .Y ( ropt_net_186 ) ) ;
INVX0_RVT ctmTdsLR_1_146 ( .A ( \intadd_6/n6 ) , .Y ( ZINV_4_3 ) ) ;
XOR3X1_RVT ctmTdsLR_1_147 ( .A1 ( ropt_net_191 ) , .A2 ( B[27] ) , 
    .A3 ( \intadd_6/n6 ) , .Y ( Sum[27] ) ) ;
XOR3X1_RVT ctmTdsLR_1_269 ( .A1 ( ropt_net_183 ) , .A2 ( A[11] ) , 
    .A3 ( ZBUF_32_3 ) , .Y ( Sum[11] ) ) ;
INVX0_RVT ctmTdsLR_1_285 ( .A ( ropt_net_188 ) , .Y ( tmp_net113 ) ) ;
MUX41X1_RVT ctmTdsLR_2_286 ( .A1 ( ropt_net_188 ) , .A3 ( tmp_net113 ) , 
    .A2 ( tmp_net113 ) , .A4 ( ropt_net_188 ) , .S0 ( \intadd_6/n16 ) , 
    .S1 ( ropt_net_199 ) , .Y ( Sum[17] ) ) ;
NBUFFX2_RVT ropt_h_inst_576 ( .A ( B[1] ) , .Y ( ropt_net_187 ) ) ;
NBUFFX2_RVT ropt_h_inst_577 ( .A ( B[17] ) , .Y ( ropt_net_188 ) ) ;
NBUFFX2_RVT ropt_h_inst_578 ( .A ( B[2] ) , .Y ( ropt_net_189 ) ) ;
NBUFFX2_RVT ropt_h_inst_579 ( .A ( A[20] ) , .Y ( ropt_net_190 ) ) ;
NBUFFX2_RVT ropt_h_inst_580 ( .A ( A[27] ) , .Y ( ropt_net_191 ) ) ;
NBUFFX2_RVT ropt_h_inst_582 ( .A ( B[3] ) , .Y ( ropt_net_192 ) ) ;
NBUFFX2_RVT ropt_h_inst_584 ( .A ( A[29] ) , .Y ( ropt_net_193 ) ) ;
NBUFFX2_RVT ropt_h_inst_585 ( .A ( A[30] ) , .Y ( ropt_net_194 ) ) ;
NBUFFX2_RVT ropt_h_inst_588 ( .A ( ropt_net_195 ) , .Y ( Sum[4] ) ) ;
NBUFFX2_RVT ropt_h_inst_589 ( .A ( ropt_net_196 ) , .Y ( Sum[1] ) ) ;
NBUFFX2_RVT ropt_h_inst_590 ( .A ( A[14] ) , .Y ( ropt_net_197 ) ) ;
NBUFFX2_RVT ropt_h_inst_591 ( .A ( popt_net_44 ) , .Y ( ropt_net_198 ) ) ;
NBUFFX2_RVT ropt_h_inst_592 ( .A ( A[17] ) , .Y ( ropt_net_199 ) ) ;
NBUFFX2_RVT ropt_h_inst_593 ( .A ( A[12] ) , .Y ( ropt_net_200 ) ) ;
NBUFFX2_RVT ropt_h_inst_594 ( .A ( B[20] ) , .Y ( ropt_net_201 ) ) ;
NBUFFX2_RVT ropt_h_inst_595 ( .A ( ropt_net_202 ) , .Y ( Sum[3] ) ) ;
NBUFFX2_RVT ropt_h_inst_596 ( .A ( ropt_net_203 ) , .Y ( Sum[2] ) ) ;
NBUFFX2_RVT ropt_h_inst_597 ( .A ( ropt_net_204 ) , .Y ( Sum[7] ) ) ;
NBUFFX2_RVT ropt_h_inst_598 ( .A ( ropt_net_205 ) , .Y ( Sum[10] ) ) ;
endmodule


