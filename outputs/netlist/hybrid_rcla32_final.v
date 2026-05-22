// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:52:23
// Library Name: hybrid_rcla32_lib
// Block Name: hybrid_rcla32
// User Label: 
// Write Command: write_verilog output/hybrid_rcla32_icc2.v
module hybrid_rcla32 ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

wire ropt_net_114 ;
wire ropt_net_115 ;
wire ropt_net_126 ;

FADDX1_RVT \intadd_5/U32 ( .A ( B[1] ) , .B ( ropt_net_111 ) , 
    .CI ( \intadd_5/n32 ) , .CO ( \intadd_5/n31 ) , .S ( ropt_net_116 ) ) ;
FADDX1_RVT \intadd_5/U31 ( .A ( A[2] ) , .B ( ropt_net_106 ) , 
    .CI ( \intadd_5/n31 ) , .CO ( \intadd_5/n30 ) , .S ( ropt_net_126 ) ) ;
FADDX1_RVT \intadd_5/U30 ( .A ( ropt_net_127 ) , .B ( ropt_net_104 ) , 
    .CI ( \intadd_5/n30 ) , .CO ( \intadd_5/n29 ) , .S ( Sum[3] ) ) ;
FADDX1_RVT \intadd_5/U29 ( .A ( A[4] ) , .B ( ropt_net_105 ) , 
    .CI ( \intadd_5/n29 ) , .CO ( \intadd_5/n28 ) , .S ( ropt_net_115 ) ) ;
FADDX1_RVT \intadd_5/U28 ( .A ( A[5] ) , .B ( ropt_net_98 ) , 
    .CI ( \intadd_5/n28 ) , .CO ( \intadd_5/n27 ) , .S ( ropt_net_114 ) ) ;
FADDX1_RVT \intadd_5/U27 ( .A ( ropt_net_118 ) , .B ( ropt_net_101 ) , 
    .CI ( \intadd_5/n27 ) , .CO ( \intadd_5/n26 ) , .S ( Sum[6] ) ) ;
FADDX1_RVT \intadd_5/U26 ( .A ( ropt_net_119 ) , .B ( ropt_net_97 ) , 
    .CI ( \intadd_5/n26 ) , .CO ( \intadd_5/n25 ) , .S ( Sum[7] ) ) ;
FADDX1_RVT \intadd_5/U25 ( .A ( ropt_net_117 ) , .B ( ropt_net_109 ) , 
    .CI ( \intadd_5/n25 ) , .CO ( \intadd_5/n24 ) , .S ( Sum[8] ) ) ;
FADDX1_RVT \intadd_5/U24 ( .A ( ropt_net_120 ) , .B ( ropt_net_95 ) , 
    .CI ( \intadd_5/n24 ) , .CO ( \intadd_5/n23 ) , .S ( Sum[9] ) ) ;
FADDX1_RVT \intadd_5/U23 ( .A ( ropt_net_124 ) , .B ( ropt_net_92 ) , 
    .CI ( ZBUF_9_3 ) , .CO ( \intadd_5/n22 ) , .S ( Sum[10] ) ) ;
FADDX1_RVT \intadd_5/U19 ( .A ( ropt_net_122 ) , .B ( ropt_net_93 ) , 
    .CI ( \intadd_5/n19 ) , .S ( Sum[14] ) ) ;
INVX0_RVT ctmTdsLR_1_238 ( .A ( n111 ) , .Y ( tmp_net84 ) ) ;
NAND3X0_RVT ctmTdsLR_1_85 ( .A1 ( n157 ) , .A2 ( n138 ) , 
    .A3 ( popt_net_45 ) , .Y ( \intadd_5/n32 ) ) ;
NAND2X0_RVT ctmTdsLR_2_86 ( .A1 ( Cin ) , .A2 ( B[0] ) , .Y ( popt_net_45 ) ) ;
NAND2X0_RVT ctmTdsLR_1_87 ( .A1 ( Cin ) , .A2 ( A[0] ) , .Y ( n138 ) ) ;
INVX0_RVT U33 ( .A ( B[18] ) , .Y ( n107 ) ) ;
INVX0_RVT U34 ( .A ( A[16] ) , .Y ( n86 ) ) ;
INVX0_RVT U35 ( .A ( B[16] ) , .Y ( n87 ) ) ;
INVX0_RVT U36 ( .A ( A[12] ) , .Y ( n114 ) ) ;
INVX0_RVT ctmTdsLR_1_249 ( .A ( n91 ) , .Y ( tmp_net88 ) ) ;
INVX0_RVT U38 ( .A ( B[12] ) , .Y ( n115 ) ) ;
INVX0_RVT U39 ( .A ( A[18] ) , .Y ( n100 ) ) ;
XOR3X1_RVT ctmTdsLR_1_202 ( .A1 ( ropt_net_99 ) , .A2 ( ropt_net_125 ) , 
    .A3 ( \intadd_5/n22 ) , .Y ( Sum[11] ) ) ;
AO21X1_RVT ctmTdsLR_1_64 ( .A1 ( popt_net_33 ) , .A2 ( \intadd_5/n18 ) , 
    .A3 ( popt_net_34 ) , .Y ( \intadd_5/n12 ) ) ;
INVX0_RVT U42 ( .A ( \intadd_5/n10 ) , .Y ( n118 ) ) ;
INVX0_RVT U43 ( .A ( n85 ) , .Y ( n81 ) ) ;
INVX0_RVT U44 ( .A ( n97 ) , .Y ( n94 ) ) ;
INVX0_RVT U45 ( .A ( n106 ) , .Y ( n102 ) ) ;
INVX0_RVT U46 ( .A ( n113 ) , .Y ( n109 ) ) ;
OAI22X1_RVT ctmTdsLR_2_239 ( .A1 ( n113 ) , .A2 ( tmp_net84 ) , .A3 ( n114 ) , 
    .A4 ( n115 ) , .Y ( n62 ) ) ;
INVX0_RVT U48 ( .A ( n141 ) , .Y ( n129 ) ) ;
INVX0_RVT U49 ( .A ( n145 ) , .Y ( n119 ) ) ;
INVX0_RVT U50 ( .A ( n123 ) , .Y ( n117 ) ) ;
INVX0_RVT ctmTdsLR_1_240 ( .A ( n104 ) , .Y ( tmp_net85 ) ) ;
INVX0_RVT U52 ( .A ( n143 ) , .Y ( n91 ) ) ;
OAI22X1_RVT ctmTdsLR_2_241 ( .A1 ( n106 ) , .A2 ( tmp_net85 ) , .A3 ( n107 ) , 
    .A4 ( n100 ) , .Y ( n63 ) ) ;
INVX0_RVT U54 ( .A ( n133 ) , .Y ( n127 ) ) ;
MUX21X1_RVT ctmTdsLR_2_250 ( .A1 ( n70 ) , .A2 ( tmp_net88 ) , .S0 ( n95 ) , 
    .Y ( popt_net_52 ) ) ;
OA222X1_RVT ctmTdsLR_1_256 ( .A1 ( popt_net_15 ) , .A2 ( popt_net_14 ) , 
    .A3 ( popt_net_15 ) , .A4 ( B[21] ) , .A5 ( popt_net_15 ) , 
    .A6 ( A[21] ) , .Y ( popt_net_18 ) ) ;
AO222X1_RVT ctmTdsLR_1_252 ( .A1 ( popt_net_8 ) , .A2 ( popt_net_7 ) , 
    .A3 ( popt_net_9 ) , .A4 ( popt_net_2 ) , .A5 ( A[20] ) , .A6 ( B[20] ) , 
    .Y ( popt_net_34 ) ) ;
AO221X1_RVT ctmTdsLR_1_253 ( .A1 ( n89 ) , .A2 ( popt_net_1 ) , .A3 ( n93 ) , 
    .A4 ( n116 ) , .A5 ( n65 ) , .Y ( popt_net_15 ) ) ;
XOR2X1_RVT U59 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .Y ( n84 ) ) ;
XNOR2X1_RVT U60 ( .A1 ( B[18] ) , .A2 ( A[18] ) , .Y ( n105 ) ) ;
XOR2X1_RVT U61 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n121 ) ) ;
XOR2X1_RVT U62 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n95 ) ) ;
XOR2X1_RVT U63 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n131 ) ) ;
AOI21X2_RVT ctmTdsLR_1_168 ( .A1 ( n120 ) , .A2 ( \intadd_5/n10 ) , 
    .A3 ( n116 ) , .Y ( n90 ) ) ;
AND3X1_RVT ctmTdsLR_1_254 ( .A1 ( popt_net_12 ) , .A2 ( A[10] ) , 
    .A3 ( B[10] ) , .Y ( tmp_net89 ) ) ;
AO221X1_RVT ctmTdsLR_2_255 ( .A1 ( n78 ) , .A2 ( popt_net_11 ) , 
    .A3 ( B[14] ) , .A4 ( A[14] ) , .A5 ( tmp_net89 ) , .Y ( popt_net_63 ) ) ;
NBUFFX2_RVT ZBUF_12_inst_257 ( .A ( A[17] ) , .Y ( ZBUF_12_3 ) ) ;
DELLN1X2_RVT ropt_h_inst_267 ( .A ( ropt_net_90 ) , .Y ( Sum[0] ) ) ;
NBUFFX2_RVT ZBUF_43_inst_259 ( .A ( A[19] ) , .Y ( ZBUF_43_3 ) ) ;
AOI21X1_RVT U70 ( .A1 ( n156 ) , .A2 ( \intadd_5/n22 ) , .A3 ( n111 ) , 
    .Y ( n66 ) ) ;
AO21X1_RVT ctmTdsLR_1_88 ( .A1 ( popt_net_46 ) , .A2 ( \intadd_5/n6 ) , 
    .A3 ( popt_net_47 ) , .Y ( \intadd_5/n3 ) ) ;
AND2X1_RVT ctmTdsLR_2_65 ( .A1 ( popt_net_6 ) , .A2 ( popt_net_8 ) , 
    .Y ( popt_net_33 ) ) ;
OR2X1_RVT U73 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .Y ( n69 ) ) ;
NAND2X0_RVT U74 ( .A1 ( A[25] ) , .A2 ( B[25] ) , .Y ( n70 ) ) ;
MUX21X1_RVT ctmTdsLR_1_228 ( .A1 ( popt_net_21 ) , .A2 ( n153 ) , 
    .S0 ( n84 ) , .Y ( tmp_net79 ) ) ;
NBUFFX2_RVT ropt_h_inst_268 ( .A ( B[31] ) , .Y ( ropt_net_91 ) ) ;
NAND2X0_RVT U77 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n73 ) ) ;
NBUFFX2_RVT ropt_h_inst_269 ( .A ( B[10] ) , .Y ( ropt_net_92 ) ) ;
INVX0_RVT ctmTdsLR_1_242 ( .A ( n83 ) , .Y ( tmp_net86 ) ) ;
OAI22X1_RVT ctmTdsLR_2_243 ( .A1 ( n85 ) , .A2 ( tmp_net86 ) , .A3 ( n87 ) , 
    .A4 ( n86 ) , .Y ( n64 ) ) ;
OAI21X1_RVT ctmTdsLR_1_244 ( .A1 ( n70 ) , .A2 ( n97 ) , .A3 ( n73 ) , 
    .Y ( n65 ) ) ;
NAND4X0_RVT ctmTdsLR_1_58 ( .A1 ( popt_net_28 ) , .A2 ( popt_net_29 ) , 
    .A3 ( popt_net_30 ) , .A4 ( popt_net_32 ) , .Y ( Sum[18] ) ) ;
AO21X1_RVT U83 ( .A1 ( \intadd_5/n22 ) , .A2 ( n79 ) , .A3 ( n78 ) , 
    .Y ( \intadd_5/n19 ) ) ;
AO22X1_RVT U84 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .A3 ( n69 ) , .A4 ( n62 ) , 
    .Y ( n78 ) ) ;
INVX0_RVT ctmTdsLR_1_230 ( .A ( B[21] ) , .Y ( tmp_net80 ) ) ;
AND2X1_RVT U86 ( .A1 ( n108 ) , .A2 ( n69 ) , .Y ( n79 ) ) ;
AO21X1_RVT U87 ( .A1 ( ZBUF_32_3 ) , .A2 ( n80 ) , .A3 ( n64 ) , 
    .Y ( \intadd_5/n16 ) ) ;
AND2X1_RVT U88 ( .A1 ( n153 ) , .A2 ( n81 ) , .Y ( n80 ) ) ;
AND2X1_RVT U89 ( .A1 ( B[15] ) , .A2 ( A[15] ) , .Y ( n83 ) ) ;
NAND3X0_RVT ctmTdsLR_2_59 ( .A1 ( \intadd_5/n16 ) , .A2 ( n151 ) , 
    .A3 ( n105 ) , .Y ( popt_net_28 ) ) ;
AND2X1_RVT U91 ( .A1 ( n87 ) , .A2 ( n86 ) , .Y ( n85 ) ) ;
AO21X1_RVT ctmTdsLR_1_42 ( .A1 ( popt_net_16 ) , .A2 ( \intadd_5/n12 ) , 
    .A3 ( popt_net_18 ) , .Y ( \intadd_5/n6 ) ) ;
NBUFFX2_RVT ZBUF_13_inst_262 ( .A ( A[21] ) , .Y ( ZBUF_13_3 ) ) ;
AND2X1_RVT ctmTdsLR_2_40 ( .A1 ( n89 ) , .A2 ( popt_net_0 ) , 
    .Y ( popt_net_14 ) ) ;
AND2X1_RVT U95 ( .A1 ( n93 ) , .A2 ( n120 ) , .Y ( n89 ) ) ;
AO21X1_RVT ctmTdsLR_1_110 ( .A1 ( popt_net_59 ) , .A2 ( \intadd_5/n6 ) , 
    .A3 ( popt_net_60 ) , .Y ( \intadd_5/n2 ) ) ;
NBUFFX2_RVT ZBUF_32_inst_263 ( .A ( \intadd_5/n18 ) , .Y ( ZBUF_32_3 ) ) ;
AND2X1_RVT U98 ( .A1 ( n143 ) , .A2 ( n94 ) , .Y ( n93 ) ) ;
AND2X1_RVT ctmTdsLR_2_104 ( .A1 ( popt_net_0 ) , .A2 ( n147 ) , 
    .Y ( popt_net_54 ) ) ;
MUX41X1_RVT ctmTdsLR_2_231 ( .A1 ( B[21] ) , .A3 ( tmp_net80 ) , 
    .A2 ( tmp_net80 ) , .A4 ( B[21] ) , .S0 ( ZBUF_2_1 ) , .S1 ( ZBUF_13_3 ) , 
    .Y ( Sum[21] ) ) ;
AND2X1_RVT ctmTdsLR_2_32 ( .A1 ( n149 ) , .A2 ( popt_net_2 ) , 
    .Y ( popt_net_8 ) ) ;
AND2X1_RVT U102 ( .A1 ( n151 ) , .A2 ( n102 ) , .Y ( n101 ) ) ;
AND2X1_RVT U103 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n104 ) ) ;
NBUFFX2_RVT ZBUF_9_inst_264 ( .A ( \intadd_5/n23 ) , .Y ( ZBUF_9_3 ) ) ;
AND2X1_RVT U105 ( .A1 ( n107 ) , .A2 ( n100 ) , .Y ( n106 ) ) ;
AND2X1_RVT U106 ( .A1 ( n156 ) , .A2 ( n109 ) , .Y ( n108 ) ) ;
AND2X1_RVT U107 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n111 ) ) ;
AOI21X1_RVT ctmTdsLR_1_232 ( .A1 ( n120 ) , .A2 ( \intadd_5/n10 ) , 
    .A3 ( n116 ) , .Y ( tmp_net81 ) ) ;
AND2X1_RVT U109 ( .A1 ( n115 ) , .A2 ( n114 ) , .Y ( n113 ) ) ;
AO22X1_RVT U110 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n71 ) , .A4 ( n123 ) , 
    .Y ( n116 ) ) ;
AND2X1_RVT ctmTdsLR_2_89 ( .A1 ( n130 ) , .A2 ( popt_net_4 ) , 
    .Y ( popt_net_46 ) ) ;
AND2X1_RVT U112 ( .A1 ( n145 ) , .A2 ( n71 ) , .Y ( n120 ) ) ;
NBUFFX2_RVT ropt_h_inst_270 ( .A ( B[14] ) , .Y ( ropt_net_93 ) ) ;
AND2X1_RVT U114 ( .A1 ( A[23] ) , .A2 ( B[23] ) , .Y ( n123 ) ) ;
XNOR3X1_RVT ctmTdsLR_2_233 ( .A1 ( ropt_net_108 ) , .A2 ( B[25] ) , 
    .A3 ( tmp_net81 ) , .Y ( Sum[25] ) ) ;
AO21X1_RVT ctmTdsLR_1_114 ( .A1 ( popt_net_61 ) , .A2 ( \intadd_5/n23 ) , 
    .A3 ( popt_net_63 ) , .Y ( \intadd_5/n18 ) ) ;
AO22X1_RVT U117 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n72 ) , .A4 ( n133 ) , 
    .Y ( n126 ) ) ;
NAND3X0_RVT ctmTdsLR_1_91 ( .A1 ( popt_net_48 ) , .A2 ( popt_net_52 ) , 
    .A3 ( popt_net_53 ) , .Y ( Sum[26] ) ) ;
AND2X1_RVT U119 ( .A1 ( n141 ) , .A2 ( n72 ) , .Y ( n130 ) ) ;
OR3X1_RVT ctmTdsLR_2_92 ( .A1 ( n91 ) , .A2 ( n95 ) , .A3 ( n90 ) , 
    .Y ( popt_net_48 ) ) ;
AND2X1_RVT U121 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .Y ( n133 ) ) ;
AOI22X1_RVT ctmTdsLR_1_234 ( .A1 ( B[19] ) , .A2 ( ZBUF_43_3 ) , 
    .A3 ( n149 ) , .A4 ( \intadd_5/n14 ) , .Y ( tmp_net82 ) ) ;
AO21X1_RVT ctmTdsLR_1_113 ( .A1 ( n130 ) , .A2 ( \intadd_5/n6 ) , 
    .A3 ( n126 ) , .Y ( \intadd_5/n4 ) ) ;
OR2X1_RVT U124 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .Y ( n137 ) ) ;
OR2X1_RVT ctmTdsLR_2_20 ( .A1 ( A[20] ) , .A2 ( B[20] ) , .Y ( popt_net_2 ) ) ;
NBUFFX2_RVT ropt_h_inst_271 ( .A ( A[23] ) , .Y ( ropt_net_94 ) ) ;
NAND2X0_RVT ctmTdsLR_1_67 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .Y ( n157 ) ) ;
XNOR3X1_RVT ctmTdsLR_2_235 ( .A1 ( ropt_net_102 ) , .A2 ( B[20] ) , 
    .A3 ( tmp_net82 ) , .Y ( Sum[20] ) ) ;
AOI22X1_RVT ctmTdsLR_1_236 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .A3 ( n147 ) , 
    .A4 ( \intadd_5/n12 ) , .Y ( tmp_net83 ) ) ;
XNOR3X1_RVT ctmTdsLR_2_237 ( .A1 ( A[22] ) , .A2 ( B[22] ) , 
    .A3 ( tmp_net83 ) , .Y ( Sum[22] ) ) ;
AO22X1_RVT ctmTdsLR_1_245 ( .A1 ( popt_net_4 ) , .A2 ( n126 ) , 
    .A3 ( A[29] ) , .A4 ( B[29] ) , .Y ( popt_net_47 ) ) ;
OR3X2_RVT ctmTdsLR_1_246 ( .A1 ( n83 ) , .A2 ( popt_net_19 ) , 
    .A3 ( ZBUF_32_3 ) , .Y ( tmp_net87 ) ) ;
NBUFFX2_RVT ropt_h_inst_272 ( .A ( B[9] ) , .Y ( ropt_net_95 ) ) ;
NAND3X0_RVT ctmTdsLR_2_247 ( .A1 ( tmp_net87 ) , .A2 ( popt_net_20 ) , 
    .A3 ( tmp_net79 ) , .Y ( Sum[16] ) ) ;
OR2X1_RVT ctmTdsLR_1_203 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n71 ) ) ;
XOR3X1_RVT ctmTdsLR_1_248 ( .A1 ( ropt_net_107 ) , .A2 ( B[30] ) , 
    .A3 ( \intadd_5/n3 ) , .Y ( Sum[30] ) ) ;
AOI21X1_RVT ctmTdsLR_1_169 ( .A1 ( popt_net_16 ) , .A2 ( \intadd_5/n12 ) , 
    .A3 ( popt_net_18 ) , .Y ( ZINV_4_2 ) ) ;
OR2X1_RVT ctmTdsLR_1_204 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n72 ) ) ;
NBUFFX2_RVT ropt_h_inst_273 ( .A ( B[13] ) , .Y ( ropt_net_96 ) ) ;
OA222X1_RVT ctmTdsLR_1_205 ( .A1 ( popt_net_1 ) , .A2 ( popt_net_0 ) , 
    .A3 ( popt_net_1 ) , .A4 ( B[21] ) , .A5 ( popt_net_1 ) , 
    .A6 ( ZBUF_13_3 ) , .Y ( popt_net_56 ) ) ;
OR2X1_RVT U141 ( .A1 ( B[27] ) , .A2 ( A[27] ) , .Y ( n141 ) ) ;
OR2X1_RVT U142 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .Y ( n143 ) ) ;
DELLN1X2_RVT ropt_h_inst_274 ( .A ( B[7] ) , .Y ( ropt_net_97 ) ) ;
OR2X1_RVT U144 ( .A1 ( B[23] ) , .A2 ( A[23] ) , .Y ( n145 ) ) ;
NBUFFX2_RVT ropt_h_inst_275 ( .A ( B[5] ) , .Y ( ropt_net_98 ) ) ;
OR2X1_RVT U146 ( .A1 ( B[21] ) , .A2 ( A[21] ) , .Y ( n147 ) ) ;
NBUFFX2_RVT ropt_h_inst_276 ( .A ( B[11] ) , .Y ( ropt_net_99 ) ) ;
NBUFFX2_RVT ropt_h_inst_277 ( .A ( B[12] ) , .Y ( ropt_net_100 ) ) ;
OR2X1_RVT U149 ( .A1 ( B[19] ) , .A2 ( A[19] ) , .Y ( n149 ) ) ;
NBUFFX2_RVT ropt_h_inst_278 ( .A ( B[6] ) , .Y ( ropt_net_101 ) ) ;
OR2X1_RVT U151 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n151 ) ) ;
NBUFFX2_RVT ropt_h_inst_279 ( .A ( A[20] ) , .Y ( ropt_net_102 ) ) ;
OR2X1_RVT U153 ( .A1 ( B[15] ) , .A2 ( A[15] ) , .Y ( n153 ) ) ;
NBUFFX2_RVT ropt_h_inst_280 ( .A ( B[17] ) , .Y ( ropt_net_103 ) ) ;
OR2X1_RVT U155 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n156 ) ) ;
XOR3X1_RVT U156 ( .A1 ( B[0] ) , .A2 ( Cin ) , .A3 ( A[0] ) , 
    .Y ( ropt_net_90 ) ) ;
NOR2X0_RVT ctmTdsLR_1_206 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n97 ) ) ;
NBUFFX2_RVT ropt_h_inst_281 ( .A ( B[3] ) , .Y ( ropt_net_104 ) ) ;
NBUFFX2_RVT ropt_h_inst_282 ( .A ( B[4] ) , .Y ( ropt_net_105 ) ) ;
NBUFFX2_RVT ropt_h_inst_283 ( .A ( B[2] ) , .Y ( ropt_net_106 ) ) ;
XNOR3X1_RVT ctmTdsLR_1_209 ( .A1 ( ropt_net_100 ) , .A2 ( ropt_net_123 ) , 
    .A3 ( n66 ) , .Y ( Sum[12] ) ) ;
NBUFFX2_RVT ropt_h_inst_284 ( .A ( A[30] ) , .Y ( ropt_net_107 ) ) ;
AOI21X1_RVT ctmTdsLR_1_210 ( .A1 ( n108 ) , .A2 ( \intadd_5/n22 ) , 
    .A3 ( n62 ) , .Y ( tmp_net71 ) ) ;
NBUFFX2_RVT ZBUF_5_inst_9 ( .A ( \intadd_5/n6 ) , .Y ( ZBUF_5_1 ) ) ;
NBUFFX2_RVT ZBUF_2_inst_10 ( .A ( \intadd_5/n12 ) , .Y ( ZBUF_2_1 ) ) ;
XNOR3X1_RVT ctmTdsLR_2_211 ( .A1 ( ropt_net_96 ) , .A2 ( A[13] ) , 
    .A3 ( tmp_net71 ) , .Y ( Sum[13] ) ) ;
XOR3X1_RVT ctmTdsLR_1_212 ( .A1 ( ropt_net_112 ) , .A2 ( A[15] ) , 
    .A3 ( ZBUF_32_3 ) , .Y ( Sum[15] ) ) ;
AO21X1_RVT ctmTdsLR_1_107 ( .A1 ( popt_net_57 ) , .A2 ( \intadd_5/n18 ) , 
    .A3 ( popt_net_58 ) , .Y ( \intadd_5/n10 ) ) ;
OR2X1_RVT ctmTdsLR_2_16 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( popt_net_0 ) ) ;
AND2X1_RVT ctmTdsLR_3_17 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( popt_net_1 ) ) ;
NBUFFX2_RVT ropt_h_inst_285 ( .A ( A[25] ) , .Y ( ropt_net_108 ) ) ;
NBUFFX2_RVT ropt_h_inst_286 ( .A ( B[8] ) , .Y ( ropt_net_109 ) ) ;
NBUFFX2_RVT ropt_h_inst_287 ( .A ( A[27] ) , .Y ( ropt_net_110 ) ) ;
NBUFFX2_RVT ropt_h_inst_288 ( .A ( A[1] ) , .Y ( ropt_net_111 ) ) ;
OR2X1_RVT ctmTdsLR_2_24 ( .A1 ( A[29] ) , .A2 ( B[29] ) , .Y ( popt_net_4 ) ) ;
NBUFFX2_RVT ropt_h_inst_289 ( .A ( B[15] ) , .Y ( ropt_net_112 ) ) ;
XOR3X1_RVT ctmTdsLR_4_26 ( .A1 ( ropt_net_113 ) , .A2 ( B[29] ) , 
    .A3 ( \intadd_5/n4 ) , .Y ( Sum[29] ) ) ;
AO21X1_RVT ctmTdsLR_1_27 ( .A1 ( popt_net_6 ) , .A2 ( \intadd_5/n18 ) , 
    .A3 ( popt_net_7 ) , .Y ( \intadd_5/n14 ) ) ;
AND2X1_RVT ctmTdsLR_2_28 ( .A1 ( n80 ) , .A2 ( n101 ) , .Y ( popt_net_6 ) ) ;
AO21X1_RVT ctmTdsLR_3_29 ( .A1 ( n64 ) , .A2 ( n101 ) , .A3 ( n63 ) , 
    .Y ( popt_net_7 ) ) ;
NBUFFX2_RVT ropt_h_inst_290 ( .A ( A[29] ) , .Y ( ropt_net_113 ) ) ;
AND2X1_RVT ctmTdsLR_4_34 ( .A1 ( B[19] ) , .A2 ( ZBUF_43_3 ) , 
    .Y ( popt_net_9 ) ) ;
XOR3X1_RVT ctmTdsLR_1_121 ( .A1 ( ropt_net_110 ) , .A2 ( B[27] ) , 
    .A3 ( ZBUF_5_1 ) , .Y ( Sum[27] ) ) ;
AND2X1_RVT ctmTdsLR_2_36 ( .A1 ( n79 ) , .A2 ( popt_net_11 ) , 
    .Y ( popt_net_12 ) ) ;
OR2X1_RVT ctmTdsLR_3_37 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( popt_net_11 ) ) ;
NBUFFX2_RVT ropt_h_inst_291 ( .A ( ropt_net_114 ) , .Y ( Sum[5] ) ) ;
NBUFFX2_RVT ropt_h_inst_292 ( .A ( ropt_net_115 ) , .Y ( Sum[4] ) ) ;
AND2X1_RVT ctmTdsLR_2_43 ( .A1 ( popt_net_14 ) , .A2 ( n147 ) , 
    .Y ( popt_net_16 ) ) ;
NBUFFX2_RVT ropt_h_inst_293 ( .A ( ropt_net_116 ) , .Y ( Sum[1] ) ) ;
NBUFFX2_RVT ropt_h_inst_294 ( .A ( A[8] ) , .Y ( ropt_net_117 ) ) ;
NBUFFX2_RVT ropt_h_inst_295 ( .A ( A[6] ) , .Y ( ropt_net_118 ) ) ;
NBUFFX2_RVT ropt_h_inst_296 ( .A ( A[7] ) , .Y ( ropt_net_119 ) ) ;
NBUFFX2_RVT ropt_h_inst_297 ( .A ( A[9] ) , .Y ( ropt_net_120 ) ) ;
NAND3X0_RVT ctmTdsLR_3_49 ( .A1 ( ZBUF_32_3 ) , .A2 ( popt_net_19 ) , 
    .A3 ( n153 ) , .Y ( popt_net_20 ) ) ;
INVX0_RVT ctmTdsLR_4_50 ( .A ( n84 ) , .Y ( popt_net_19 ) ) ;
NBUFFX2_RVT ropt_h_inst_298 ( .A ( popt_net_36 ) , .Y ( ropt_net_121 ) ) ;
INVX0_RVT ctmTdsLR_6_52 ( .A ( n83 ) , .Y ( popt_net_21 ) ) ;
NBUFFX2_RVT ropt_h_inst_299 ( .A ( A[14] ) , .Y ( ropt_net_122 ) ) ;
NBUFFX2_RVT ropt_h_inst_300 ( .A ( A[12] ) , .Y ( ropt_net_123 ) ) ;
NBUFFX2_RVT ropt_h_inst_301 ( .A ( A[10] ) , .Y ( ropt_net_124 ) ) ;
OR3X1_RVT ctmTdsLR_3_60 ( .A1 ( n151 ) , .A2 ( n104 ) , .A3 ( n105 ) , 
    .Y ( popt_net_29 ) ) ;
NAND2X0_RVT ctmTdsLR_4_61 ( .A1 ( n105 ) , .A2 ( n104 ) , .Y ( popt_net_30 ) ) ;
NBUFFX2_RVT ropt_h_inst_302 ( .A ( A[11] ) , .Y ( ropt_net_125 ) ) ;
NBUFFX2_RVT ropt_h_inst_303 ( .A ( ropt_net_126 ) , .Y ( Sum[2] ) ) ;
AO21X1_RVT ctmTdsLR_1_68 ( .A1 ( popt_net_35 ) , .A2 ( \intadd_5/n2 ) , 
    .A3 ( ropt_net_121 ) , .Y ( Cout ) ) ;
OR2X1_RVT ctmTdsLR_2_69 ( .A1 ( ropt_net_91 ) , .A2 ( A[31] ) , 
    .Y ( popt_net_35 ) ) ;
AND2X1_RVT ctmTdsLR_3_70 ( .A1 ( ropt_net_91 ) , .A2 ( A[31] ) , 
    .Y ( popt_net_36 ) ) ;
XOR3X2_RVT ctmTdsLR_4_71 ( .A1 ( ropt_net_91 ) , .A2 ( A[31] ) , 
    .A3 ( \intadd_5/n2 ) , .Y ( Sum[31] ) ) ;
NAND3X0_RVT ctmTdsLR_1_72 ( .A1 ( popt_net_37 ) , .A2 ( popt_net_39 ) , 
    .A3 ( popt_net_40 ) , .Y ( Sum[24] ) ) ;
OR3X1_RVT ctmTdsLR_2_73 ( .A1 ( n119 ) , .A2 ( n121 ) , .A3 ( n118 ) , 
    .Y ( popt_net_37 ) ) ;
MUX21X1_RVT ctmTdsLR_3_74 ( .A1 ( n117 ) , .A2 ( popt_net_38 ) , 
    .S0 ( n121 ) , .Y ( popt_net_39 ) ) ;
NAND2X0_RVT ctmTdsLR_4_75 ( .A1 ( n119 ) , .A2 ( n117 ) , .Y ( popt_net_38 ) ) ;
NAND3X0_RVT ctmTdsLR_5_76 ( .A1 ( n118 ) , .A2 ( n117 ) , .A3 ( n121 ) , 
    .Y ( popt_net_40 ) ) ;
NAND3X0_RVT ctmTdsLR_1_77 ( .A1 ( popt_net_41 ) , .A2 ( popt_net_43 ) , 
    .A3 ( popt_net_44 ) , .Y ( Sum[28] ) ) ;
OR3X1_RVT ctmTdsLR_2_78 ( .A1 ( n129 ) , .A2 ( n131 ) , .A3 ( ZINV_4_2 ) , 
    .Y ( popt_net_41 ) ) ;
OA21X1_RVT ctmTdsLR_3_79 ( .A1 ( n127 ) , .A2 ( n131 ) , .A3 ( popt_net_42 ) , 
    .Y ( popt_net_43 ) ) ;
NAND3X0_RVT ctmTdsLR_4_80 ( .A1 ( n127 ) , .A2 ( n129 ) , .A3 ( n131 ) , 
    .Y ( popt_net_42 ) ) ;
NAND3X0_RVT ctmTdsLR_5_81 ( .A1 ( ZINV_4_2 ) , .A2 ( n127 ) , .A3 ( n131 ) , 
    .Y ( popt_net_44 ) ) ;
NBUFFX2_RVT ropt_h_inst_304 ( .A ( A[3] ) , .Y ( ropt_net_127 ) ) ;
NAND3X0_RVT ctmTdsLR_7_97 ( .A1 ( n90 ) , .A2 ( n70 ) , .A3 ( n95 ) , 
    .Y ( popt_net_53 ) ) ;
AND2X1_RVT ctmTdsLR_2_108 ( .A1 ( popt_net_33 ) , .A2 ( popt_net_54 ) , 
    .Y ( popt_net_57 ) ) ;
AO21X1_RVT ctmTdsLR_3_109 ( .A1 ( popt_net_34 ) , .A2 ( popt_net_54 ) , 
    .A3 ( popt_net_56 ) , .Y ( popt_net_58 ) ) ;
AND2X1_RVT ctmTdsLR_2_111 ( .A1 ( popt_net_46 ) , .A2 ( n137 ) , 
    .Y ( popt_net_59 ) ) ;
AO22X1_RVT ctmTdsLR_3_112 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .A3 ( n137 ) , 
    .A4 ( popt_net_47 ) , .Y ( popt_net_60 ) ) ;
OA21X1_RVT ctmTdsLR_2_115 ( .A1 ( B[10] ) , .A2 ( A[10] ) , 
    .A3 ( popt_net_12 ) , .Y ( popt_net_61 ) ) ;
INVX0_RVT ctmTdsLR_1_213 ( .A ( B[19] ) , .Y ( tmp_net72 ) ) ;
MUX41X1_RVT ctmTdsLR_2_214 ( .A1 ( B[19] ) , .A3 ( tmp_net72 ) , 
    .A2 ( tmp_net72 ) , .A4 ( B[19] ) , .S0 ( \intadd_5/n14 ) , 
    .S1 ( ZBUF_43_3 ) , .Y ( Sum[19] ) ) ;
INVX0_RVT ctmTdsLR_1_215 ( .A ( B[23] ) , .Y ( tmp_net73 ) ) ;
MUX41X1_RVT ctmTdsLR_2_216 ( .A1 ( B[23] ) , .A3 ( tmp_net73 ) , 
    .A2 ( tmp_net73 ) , .A4 ( B[23] ) , .S0 ( \intadd_5/n10 ) , 
    .S1 ( ropt_net_94 ) , .Y ( Sum[23] ) ) ;
INVX0_RVT ctmTdsLR_1_217 ( .A ( ropt_net_103 ) , .Y ( tmp_net74 ) ) ;
MUX41X1_RVT ctmTdsLR_2_218 ( .A1 ( ropt_net_103 ) , .A3 ( tmp_net74 ) , 
    .A2 ( tmp_net74 ) , .A4 ( ropt_net_103 ) , .S0 ( \intadd_5/n16 ) , 
    .S1 ( ZBUF_12_3 ) , .Y ( Sum[17] ) ) ;
OR3X2_RVT ctmTdsLR_1_221 ( .A1 ( n104 ) , .A2 ( n105 ) , 
    .A3 ( \intadd_5/n16 ) , .Y ( popt_net_32 ) ) ;
endmodule


