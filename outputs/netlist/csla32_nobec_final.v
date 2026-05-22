// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:53:17
// Library Name: csla32_nobec_lib
// Block Name: csla32_nobec_flat
// User Label: 
// Write Command: write_verilog output/csla32_nobec_icc2.v
module csla32_nobec_flat ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

FADDX1_RVT \intadd_0/U8 ( .A ( B[25] ) , .B ( A[25] ) , .CI ( \intadd_0/CI ) , 
    .CO ( \intadd_0/n7 ) , .S ( \intadd_0/SUM[0] ) ) ;
FADDX1_RVT \intadd_0/U7 ( .A ( B[26] ) , .B ( A[26] ) , .CI ( \intadd_0/n7 ) , 
    .CO ( \intadd_0/n6 ) , .S ( \intadd_0/SUM[1] ) ) ;
FADDX1_RVT \intadd_0/U6 ( .A ( B[27] ) , .B ( A[27] ) , .CI ( \intadd_0/n6 ) , 
    .CO ( \intadd_0/n5 ) , .S ( \intadd_0/SUM[2] ) ) ;
FADDX1_RVT \intadd_0/U5 ( .A ( B[28] ) , .B ( A[28] ) , .CI ( \intadd_0/n5 ) , 
    .CO ( \intadd_0/n4 ) , .S ( \intadd_0/SUM[3] ) ) ;
FADDX1_RVT \intadd_0/U4 ( .A ( B[29] ) , .B ( A[29] ) , .CI ( \intadd_0/n4 ) , 
    .CO ( \intadd_0/n3 ) , .S ( \intadd_0/SUM[4] ) ) ;
FADDX1_RVT \intadd_0/U3 ( .A ( B[30] ) , .B ( A[30] ) , .CI ( \intadd_0/n3 ) , 
    .CO ( \intadd_0/n2 ) , .S ( \intadd_0/SUM[5] ) ) ;
FADDX1_RVT \intadd_0/U2 ( .A ( B[31] ) , .B ( A[31] ) , .CI ( \intadd_0/n2 ) , 
    .CO ( \intadd_0/n1 ) , .S ( \intadd_0/SUM[6] ) ) ;
FADDX1_RVT \intadd_1/U7 ( .A ( B[18] ) , .B ( A[18] ) , .CI ( \intadd_1/CI ) , 
    .CO ( \intadd_1/n6 ) , .S ( \intadd_1/SUM[0] ) ) ;
FADDX1_RVT \intadd_1/U6 ( .A ( B[19] ) , .B ( A[19] ) , .CI ( \intadd_1/n6 ) , 
    .CO ( \intadd_1/n5 ) , .S ( \intadd_1/SUM[1] ) ) ;
FADDX1_RVT \intadd_1/U5 ( .A ( B[20] ) , .B ( A[20] ) , .CI ( \intadd_1/n5 ) , 
    .CO ( \intadd_1/n4 ) , .S ( \intadd_1/SUM[2] ) ) ;
FADDX1_RVT \intadd_1/U4 ( .A ( B[21] ) , .B ( A[21] ) , .CI ( \intadd_1/n4 ) , 
    .CO ( \intadd_1/n3 ) , .S ( \intadd_1/SUM[3] ) ) ;
FADDX1_RVT \intadd_1/U3 ( .A ( B[22] ) , .B ( A[22] ) , .CI ( \intadd_1/n3 ) , 
    .CO ( \intadd_1/n2 ) , .S ( \intadd_1/SUM[4] ) ) ;
FADDX1_RVT \intadd_1/U2 ( .A ( B[23] ) , .B ( A[23] ) , .CI ( \intadd_1/n2 ) , 
    .CO ( \intadd_1/n1 ) , .S ( \intadd_1/SUM[5] ) ) ;
FADDX1_RVT \intadd_2/U6 ( .A ( B[12] ) , .B ( A[12] ) , .CI ( \intadd_2/CI ) , 
    .CO ( \intadd_2/n5 ) , .S ( \intadd_2/SUM[0] ) ) ;
FADDX1_RVT \intadd_2/U5 ( .A ( B[13] ) , .B ( A[13] ) , .CI ( \intadd_2/n5 ) , 
    .CO ( \intadd_2/n4 ) , .S ( \intadd_2/SUM[1] ) ) ;
FADDX1_RVT \intadd_2/U4 ( .A ( B[14] ) , .B ( A[14] ) , .CI ( \intadd_2/n4 ) , 
    .CO ( \intadd_2/n3 ) , .S ( \intadd_2/SUM[2] ) ) ;
FADDX1_RVT \intadd_2/U3 ( .A ( B[15] ) , .B ( A[15] ) , .CI ( \intadd_2/n3 ) , 
    .CO ( \intadd_2/n2 ) , .S ( \intadd_2/SUM[3] ) ) ;
FADDX1_RVT \intadd_2/U2 ( .A ( B[16] ) , .B ( A[16] ) , .CI ( \intadd_2/n2 ) , 
    .CO ( \intadd_2/n1 ) , .S ( \intadd_2/SUM[4] ) ) ;
FADDX1_RVT \intadd_3/U4 ( .A ( B[8] ) , .B ( A[8] ) , .CI ( \intadd_3/CI ) , 
    .CO ( \intadd_3/n3 ) , .S ( \intadd_3/SUM[0] ) ) ;
FADDX1_RVT \intadd_3/U3 ( .A ( B[9] ) , .B ( A[9] ) , .CI ( \intadd_3/n3 ) , 
    .CO ( \intadd_3/n2 ) , .S ( \intadd_3/SUM[1] ) ) ;
FADDX1_RVT \intadd_3/U2 ( .A ( B[10] ) , .B ( A[10] ) , .CI ( \intadd_3/n2 ) , 
    .CO ( \intadd_3/n1 ) , .S ( \intadd_3/SUM[2] ) ) ;
INVX0_RVT U65 ( .A ( n130 ) , .Y ( n72 ) ) ;
INVX0_RVT ctmTdsLR_1_84 ( .A ( \intadd_2/SUM[3] ) , .Y ( tmp_net27 ) ) ;
INVX0_RVT ctmTdsLR_1_80 ( .A ( \intadd_3/SUM[1] ) , .Y ( tmp_net25 ) ) ;
INVX0_RVT U68 ( .A ( n57 ) , .Y ( n55 ) ) ;
INVX0_RVT U69 ( .A ( n70 ) , .Y ( n73 ) ) ;
NAND3X0_RVT ctmTdsLR_1_41 ( .A1 ( n96 ) , .A2 ( \intadd_1/SUM[3] ) , 
    .A3 ( popt_net_6 ) , .Y ( n135 ) ) ;
AOI21X1_RVT ctmTdsLR_2_81 ( .A1 ( n138 ) , .A2 ( tmp_net25 ) , .A3 ( n141 ) , 
    .Y ( Sum[9] ) ) ;
NAND3X0_RVT ctmTdsLR_1_82 ( .A1 ( n96 ) , .A2 ( popt_net_15 ) , 
    .A3 ( \intadd_1/SUM[5] ) , .Y ( tmp_net26 ) ) ;
NAND2X0_RVT ctmTdsLR_2_83 ( .A1 ( tmp_net26 ) , .A2 ( n109 ) , .Y ( n112 ) ) ;
AOI21X1_RVT ctmTdsLR_2_85 ( .A1 ( n143 ) , .A2 ( tmp_net27 ) , 
    .A3 ( ZBUF_32_6 ) , .Y ( Sum[15] ) ) ;
INVX0_RVT ctmTdsLR_1_86 ( .A ( n35 ) , .Y ( tmp_net28 ) ) ;
OR2X1_RVT U76 ( .A1 ( n123 ) , .A2 ( n122 ) , .Y ( n125 ) ) ;
INVX0_RVT U77 ( .A ( \intadd_0/SUM[3] ) , .Y ( n123 ) ) ;
AND2X1_RVT ctmTdsLR_2_87 ( .A1 ( tmp_net28 ) , .A2 ( n97 ) , .Y ( n98 ) ) ;
INVX0_RVT U79 ( .A ( \intadd_0/SUM[4] ) , .Y ( n126 ) ) ;
INVX0_RVT U80 ( .A ( n59 ) , .Y ( n61 ) ) ;
AND2X1_RVT ctmTdsLR_3_43 ( .A1 ( \intadd_1/SUM[2] ) , .A2 ( popt_net_4 ) , 
    .Y ( popt_net_6 ) ) ;
NAND2X0_RVT ctmTdsLR_1_88 ( .A1 ( n50 ) , .A2 ( B[1] ) , .Y ( tmp_net29 ) ) ;
INVX0_RVT U83 ( .A ( \intadd_3/SUM[1] ) , .Y ( n78 ) ) ;
NAND4X0_RVT ctmTdsLR_1_100 ( .A1 ( \intadd_0/SUM[2] ) , .A2 ( tmp_net32 ) , 
    .A3 ( \intadd_0/SUM[0] ) , .A4 ( n111 ) , .Y ( popt_net_17 ) ) ;
AND4X1_RVT ctmTdsLR_2_89 ( .A1 ( popt_net_18 ) , .A2 ( popt_net_24 ) , 
    .A3 ( n47 ) , .A4 ( tmp_net29 ) , .Y ( n36 ) ) ;
INVX0_RVT U86 ( .A ( \intadd_1/n1 ) , .Y ( n109 ) ) ;
INVX0_RVT ctmTdsLR_1_101 ( .A ( n106 ) , .Y ( tmp_net34 ) ) ;
INVX0_RVT U88 ( .A ( \intadd_0/SUM[5] ) , .Y ( n142 ) ) ;
OR2X1_RVT U89 ( .A1 ( B[1] ) , .A2 ( n50 ) , .Y ( n45 ) ) ;
INVX0_RVT U90 ( .A ( n51 ) , .Y ( n37 ) ) ;
INVX0_RVT U91 ( .A ( n75 ) , .Y ( n40 ) ) ;
INVX0_RVT ctmTdsLR_1_92 ( .A ( n32 ) , .Y ( tmp_net31 ) ) ;
INVX0_RVT U93 ( .A ( \intadd_2/SUM[2] ) , .Y ( n90 ) ) ;
INVX0_RVT ctmTdsLR_1_94 ( .A ( n117 ) , .Y ( tmp_net32 ) ) ;
INVX0_RVT U95 ( .A ( \intadd_1/SUM[4] ) , .Y ( n106 ) ) ;
INVX0_RVT U96 ( .A ( \intadd_0/SUM[1] ) , .Y ( n117 ) ) ;
INVX0_RVT U97 ( .A ( n53 ) , .Y ( n58 ) ) ;
OR2X1_RVT U98 ( .A1 ( n37 ) , .A2 ( ZBUF_17_6 ) , .Y ( n54 ) ) ;
INVX0_RVT U99 ( .A ( \intadd_3/n1 ) , .Y ( n82 ) ) ;
INVX0_RVT ctmTdsLR_1_90 ( .A ( n40 ) , .Y ( tmp_net30 ) ) ;
OA21X1_RVT U101 ( .A1 ( A[0] ) , .A2 ( Cin ) , .A3 ( n155 ) , .Y ( n43 ) ) ;
OA21X1_RVT U102 ( .A1 ( n52 ) , .A2 ( n51 ) , .A3 ( n54 ) , .Y ( Sum[2] ) ) ;
OA21X1_RVT U103 ( .A1 ( n57 ) , .A2 ( n56 ) , .A3 ( n60 ) , .Y ( Sum[3] ) ) ;
OA21X1_RVT U104 ( .A1 ( n63 ) , .A2 ( ZBUF_9_3 ) , .A3 ( n65 ) , 
    .Y ( Sum[4] ) ) ;
OA21X1_RVT U105 ( .A1 ( n68 ) , .A2 ( n67 ) , .A3 ( ZBUF_16_6 ) , 
    .Y ( Sum[5] ) ) ;
OA21X1_RVT U107 ( .A1 ( n76 ) , .A2 ( n75 ) , .A3 ( n137 ) , .Y ( Sum[7] ) ) ;
OA21X1_RVT U108 ( .A1 ( n141 ) , .A2 ( \intadd_3/SUM[2] ) , .A3 ( n140 ) , 
    .Y ( Sum[10] ) ) ;
OA21X1_RVT U109 ( .A1 ( n86 ) , .A2 ( \intadd_2/SUM[0] ) , .A3 ( n152 ) , 
    .Y ( Sum[12] ) ) ;
OA21X1_RVT U110 ( .A1 ( \intadd_2/SUM[1] ) , .A2 ( n88 ) , .A3 ( n89 ) , 
    .Y ( Sum[13] ) ) ;
OA21X1_RVT U111 ( .A1 ( \intadd_2/SUM[2] ) , .A2 ( n91 ) , .A3 ( n143 ) , 
    .Y ( Sum[14] ) ) ;
NAND2X0_RVT ctmTdsLR_2_91 ( .A1 ( \intadd_3/SUM[0] ) , .A2 ( tmp_net30 ) , 
    .Y ( n38 ) ) ;
OA21X1_RVT U113 ( .A1 ( ZBUF_32_6 ) , .A2 ( \intadd_2/SUM[4] ) , 
    .A3 ( n132 ) , .Y ( Sum[16] ) ) ;
OA21X1_RVT U114 ( .A1 ( \intadd_1/SUM[1] ) , .A2 ( n101 ) , .A3 ( n102 ) , 
    .Y ( Sum[19] ) ) ;
OA21X1_RVT U115 ( .A1 ( \intadd_1/SUM[2] ) , .A2 ( n104 ) , .A3 ( n134 ) , 
    .Y ( Sum[20] ) ) ;
OA21X1_RVT U116 ( .A1 ( n136 ) , .A2 ( \intadd_1/SUM[3] ) , .A3 ( n135 ) , 
    .Y ( Sum[21] ) ) ;
OA21X1_RVT U117 ( .A1 ( \intadd_1/SUM[4] ) , .A2 ( n107 ) , .A3 ( n146 ) , 
    .Y ( Sum[22] ) ) ;
OA21X1_RVT U118 ( .A1 ( n148 ) , .A2 ( \intadd_1/SUM[5] ) , .A3 ( n147 ) , 
    .Y ( Sum[23] ) ) ;
OA21X1_RVT U119 ( .A1 ( n112 ) , .A2 ( n111 ) , .A3 ( n113 ) , 
    .Y ( Sum[24] ) ) ;
OA21X1_RVT U120 ( .A1 ( \intadd_0/SUM[0] ) , .A2 ( n115 ) , .A3 ( n116 ) , 
    .Y ( Sum[25] ) ) ;
OA21X1_RVT U121 ( .A1 ( \intadd_0/SUM[1] ) , .A2 ( n118 ) , .A3 ( n119 ) , 
    .Y ( Sum[26] ) ) ;
OA21X1_RVT U122 ( .A1 ( \intadd_0/SUM[2] ) , .A2 ( n121 ) , .A3 ( n122 ) , 
    .Y ( Sum[27] ) ) ;
OA21X1_RVT U123 ( .A1 ( \intadd_0/SUM[3] ) , .A2 ( n124 ) , .A3 ( n125 ) , 
    .Y ( Sum[28] ) ) ;
OA21X1_RVT U124 ( .A1 ( \intadd_0/SUM[4] ) , .A2 ( n127 ) , 
    .A3 ( ZBUF_17_7 ) , .Y ( Sum[29] ) ) ;
OA21X1_RVT U125 ( .A1 ( n151 ) , .A2 ( \intadd_0/SUM[5] ) , .A3 ( n150 ) , 
    .Y ( Sum[30] ) ) ;
OR2X2_RVT U126 ( .A1 ( n35 ) , .A2 ( n32 ) , .Y ( n99 ) ) ;
NAND2X0_RVT ctmTdsLR_2_93 ( .A1 ( \intadd_1/SUM[1] ) , .A2 ( tmp_net31 ) , 
    .Y ( n33 ) ) ;
NAND2X0_RVT U128 ( .A1 ( n97 ) , .A2 ( \intadd_1/SUM[0] ) , .Y ( n32 ) ) ;
OR2X1_RVT U129 ( .A1 ( n33 ) , .A2 ( n35 ) , .Y ( n102 ) ) ;
AND2X1_RVT ctmTdsLR_1_44 ( .A1 ( n86 ) , .A2 ( popt_net_9 ) , .Y ( n133 ) ) ;
DELLN1X2_RVT ropt_h_inst_110 ( .A ( ropt_net_35 ) , .Y ( Sum[0] ) ) ;
INVX0_RVT U132 ( .A ( n96 ) , .Y ( n35 ) ) ;
OR3X1_RVT U133 ( .A1 ( n37 ) , .A2 ( n55 ) , .A3 ( n36 ) , .Y ( n60 ) ) ;
INVX0_RVT ctmTdsLR_1_96 ( .A ( n90 ) , .Y ( tmp_net33 ) ) ;
INVX0_RVT U135 ( .A ( ZBUF_17_6 ) , .Y ( n52 ) ) ;
AO21X1_RVT ctmTdsLR_1_58 ( .A1 ( n133 ) , .A2 ( \intadd_2/SUM[4] ) , 
    .A3 ( \intadd_2/n1 ) , .Y ( n96 ) ) ;
OR2X1_RVT U137 ( .A1 ( n40 ) , .A2 ( ZBUF_50_3 ) , .Y ( n137 ) ) ;
OR2X1_RVT U138 ( .A1 ( ZBUF_50_3 ) , .A2 ( n38 ) , .Y ( n138 ) ) ;
NOR3X2_RVT U139 ( .A1 ( n78 ) , .A2 ( n38 ) , .A3 ( n39 ) , .Y ( n141 ) ) ;
OA22X1_RVT ctmTdsLR_1_103 ( .A1 ( n130 ) , .A2 ( n131 ) , .A3 ( n72 ) , 
    .A4 ( n128 ) , .Y ( Sum[6] ) ) ;
INVX0_RVT U141 ( .A ( ZBUF_50_3 ) , .Y ( n76 ) ) ;
AO21X1_RVT ctmTdsLR_1_62 ( .A1 ( n147 ) , .A2 ( n109 ) , .A3 ( popt_net_17 ) , 
    .Y ( n122 ) ) ;
OR2X2_RVT U143 ( .A1 ( n117 ) , .A2 ( n116 ) , .Y ( n119 ) ) ;
AND4X1_RVT ctmTdsLR_1_99 ( .A1 ( \intadd_2/SUM[3] ) , .A2 ( tmp_net33 ) , 
    .A3 ( \intadd_2/SUM[1] ) , .A4 ( \intadd_2/SUM[0] ) , .Y ( popt_net_9 ) ) ;
AND3X1_RVT ctmTdsLR_1_104 ( .A1 ( tmp_net34 ) , .A2 ( \intadd_1/SUM[3] ) , 
    .A3 ( popt_net_6 ) , .Y ( popt_net_15 ) ) ;
OR2X1_RVT U146 ( .A1 ( n90 ) , .A2 ( n89 ) , .Y ( n143 ) ) ;
NBUFFX2_RVT ropt_h_inst_111 ( .A ( A[1] ) , .Y ( ropt_net_36 ) ) ;
NBUFFX2_RVT ropt_h_inst_112 ( .A ( ropt_net_37 ) , .Y ( Sum[1] ) ) ;
NAND2X0_RVT U149 ( .A1 ( n133 ) , .A2 ( \intadd_2/SUM[4] ) , .Y ( n132 ) ) ;
OR3X2_RVT ctmTdsLR_1_79 ( .A1 ( n123 ) , .A2 ( n126 ) , .A3 ( n122 ) , 
    .Y ( n149 ) ) ;
OR2X2_RVT U151 ( .A1 ( n106 ) , .A2 ( n135 ) , .Y ( n146 ) ) ;
NAND2X0_RVT U152 ( .A1 ( n112 ) , .A2 ( n111 ) , .Y ( n113 ) ) ;
INVX0_RVT U156 ( .A ( n98 ) , .Y ( n95 ) ) ;
AO21X1_RVT U157 ( .A1 ( \intadd_0/SUM[6] ) , .A2 ( n153 ) , 
    .A3 ( \intadd_0/n1 ) , .Y ( Cout ) ) ;
NAND2X0_RVT U158 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n81 ) ) ;
INVX0_RVT U159 ( .A ( n81 ) , .Y ( \intadd_2/CI ) ) ;
NAND2X0_RVT U160 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n92 ) ) ;
INVX0_RVT U161 ( .A ( n92 ) , .Y ( \intadd_1/CI ) ) ;
NAND2X0_RVT U162 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n110 ) ) ;
INVX0_RVT U163 ( .A ( n110 ) , .Y ( \intadd_0/CI ) ) ;
NAND2X0_RVT U164 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .Y ( n74 ) ) ;
INVX0_RVT U165 ( .A ( n74 ) , .Y ( \intadd_3/CI ) ) ;
OA221X1_RVT U167 ( .A1 ( 1'b0 ) , .A2 ( B[0] ) , .A3 ( A[0] ) , .A4 ( Cin ) , 
    .A5 ( n155 ) , .Y ( n44 ) ) ;
INVX0_RVT U168 ( .A ( n44 ) , .Y ( n154 ) ) ;
OA21X1_RVT U169 ( .A1 ( n43 ) , .A2 ( B[0] ) , .A3 ( n154 ) , 
    .Y ( ropt_net_35 ) ) ;
AND2X1_RVT U170 ( .A1 ( A[0] ) , .A2 ( Cin ) , .Y ( n50 ) ) ;
NAND2X0_RVT U172 ( .A1 ( A[1] ) , .A2 ( n45 ) , .Y ( n47 ) ) ;
NAND2X0_RVT U175 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .Y ( n53 ) ) ;
OA21X1_RVT U176 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .A3 ( n53 ) , .Y ( n51 ) ) ;
INVX0_RVT U177 ( .A ( n54 ) , .Y ( n56 ) ) ;
NAND2X0_RVT U178 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .Y ( n64 ) ) ;
OA21X1_RVT U179 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .A3 ( n64 ) , .Y ( n63 ) ) ;
FADDX1_RVT U180 ( .A ( B[3] ) , .B ( A[3] ) , .CI ( n58 ) , .CO ( n59 ) , 
    .S ( n57 ) ) ;
NAND2X0_RVT U181 ( .A1 ( n63 ) , .A2 ( n62 ) , .Y ( n65 ) ) ;
INVX0_RVT U182 ( .A ( n64 ) , .Y ( n69 ) ) ;
INVX0_RVT U183 ( .A ( n65 ) , .Y ( n67 ) ) ;
FADDX1_RVT U184 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( n69 ) , .CO ( n71 ) , 
    .S ( n68 ) ) ;
FADDX1_RVT U185 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( n71 ) , .CO ( n70 ) , 
    .S ( n130 ) ) ;
OA21X1_RVT U187 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .A3 ( n74 ) , .Y ( n75 ) ) ;
OA21X1_RVT U190 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .A3 ( n81 ) , .Y ( n85 ) ) ;
OA21X1_RVT ctmTdsLR_1_61 ( .A1 ( n72 ) , .A2 ( n128 ) , .A3 ( n73 ) , 
    .Y ( n39 ) ) ;
AND2X1_RVT U193 ( .A1 ( n84 ) , .A2 ( n85 ) , .Y ( n86 ) ) ;
INVX0_RVT U194 ( .A ( n86 ) , .Y ( n83 ) ) ;
OA21X1_RVT U195 ( .A1 ( n85 ) , .A2 ( n84 ) , .A3 ( n83 ) , .Y ( Sum[11] ) ) ;
NAND2X0_RVT U196 ( .A1 ( \intadd_2/SUM[0] ) , .A2 ( n86 ) , .Y ( n152 ) ) ;
INVX0_RVT U197 ( .A ( n152 ) , .Y ( n88 ) ) ;
INVX0_RVT U198 ( .A ( n89 ) , .Y ( n91 ) ) ;
OA21X1_RVT U199 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .A3 ( n92 ) , .Y ( n97 ) ) ;
OA21X1_RVT U201 ( .A1 ( n97 ) , .A2 ( n96 ) , .A3 ( n95 ) , .Y ( Sum[17] ) ) ;
INVX0_RVT U202 ( .A ( n99 ) , .Y ( n101 ) ) ;
INVX0_RVT U203 ( .A ( n102 ) , .Y ( n104 ) ) ;
INVX0_RVT U204 ( .A ( n135 ) , .Y ( n107 ) ) ;
OA21X1_RVT U205 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n110 ) , .Y ( n111 ) ) ;
INVX0_RVT U206 ( .A ( n113 ) , .Y ( n115 ) ) ;
INVX0_RVT U207 ( .A ( n116 ) , .Y ( n118 ) ) ;
INVX0_RVT U208 ( .A ( n119 ) , .Y ( n121 ) ) ;
INVX0_RVT U209 ( .A ( n122 ) , .Y ( n124 ) ) ;
INVX0_RVT U210 ( .A ( n125 ) , .Y ( n127 ) ) ;
OA21X1_RVT U211 ( .A1 ( n98 ) , .A2 ( \intadd_1/SUM[0] ) , .A3 ( n99 ) , 
    .Y ( Sum[18] ) ) ;
INVX0_RVT U212 ( .A ( n128 ) , .Y ( n131 ) ) ;
INVX0_RVT U213 ( .A ( n134 ) , .Y ( n136 ) ) ;
INVX0_RVT U214 ( .A ( n137 ) , .Y ( n139 ) ) ;
OA21X1_RVT U215 ( .A1 ( n139 ) , .A2 ( \intadd_3/SUM[0] ) , .A3 ( n138 ) , 
    .Y ( Sum[8] ) ) ;
OR2X2_RVT U216 ( .A1 ( n142 ) , .A2 ( n149 ) , .Y ( n150 ) ) ;
INVX0_RVT U217 ( .A ( n150 ) , .Y ( n153 ) ) ;
INVX0_RVT U219 ( .A ( n146 ) , .Y ( n148 ) ) ;
INVX0_RVT U220 ( .A ( ZBUF_17_7 ) , .Y ( n151 ) ) ;
HADDX1_RVT U221 ( .A0 ( \intadd_0/SUM[6] ) , .B0 ( n153 ) , .SO ( Sum[31] ) ) ;
NAND2X0_RVT U222 ( .A1 ( n155 ) , .A2 ( n154 ) , .Y ( n156 ) ) ;
FADDX1_RVT U223 ( .A ( ropt_net_36 ) , .B ( B[1] ) , .CI ( n156 ) , 
    .S ( ropt_net_37 ) ) ;
NBUFFX2_RVT ZBUF_9_inst_7 ( .A ( n62 ) , .Y ( ZBUF_9_3 ) ) ;
NBUFFX2_RVT ZBUF_50_inst_10 ( .A ( n39 ) , .Y ( ZBUF_50_3 ) ) ;
DELLN2X2_RVT ZBUF_16_inst_20 ( .A ( n128 ) , .Y ( ZBUF_16_6 ) ) ;
NBUFFX2_RVT ZBUF_32_inst_24 ( .A ( n133 ) , .Y ( ZBUF_32_6 ) ) ;
NBUFFX2_RVT ZBUF_17_inst_25 ( .A ( n36 ) , .Y ( ZBUF_17_6 ) ) ;
NBUFFX2_RVT ZBUF_17_inst_29 ( .A ( n149 ) , .Y ( ZBUF_17_7 ) ) ;
NAND3X0_RVT ctmTdsLR_1_30 ( .A1 ( n86 ) , .A2 ( \intadd_2/SUM[1] ) , 
    .A3 ( \intadd_2/SUM[0] ) , .Y ( n89 ) ) ;
NAND3X1_RVT ctmTdsLR_1_32 ( .A1 ( n112 ) , .A2 ( \intadd_0/SUM[0] ) , 
    .A3 ( n111 ) , .Y ( n116 ) ) ;
NAND2X0_RVT ctmTdsLR_1_34 ( .A1 ( Cin ) , .A2 ( A[0] ) , .Y ( n155 ) ) ;
NAND3X0_RVT ctmTdsLR_1_35 ( .A1 ( n62 ) , .A2 ( n68 ) , .A3 ( n63 ) , 
    .Y ( n128 ) ) ;
NAND2X0_RVT ctmTdsLR_2_76 ( .A1 ( A[1] ) , .A2 ( n44 ) , .Y ( popt_net_24 ) ) ;
NAND3X0_RVT ctmTdsLR_1_38 ( .A1 ( n96 ) , .A2 ( \intadd_1/SUM[2] ) , 
    .A3 ( popt_net_4 ) , .Y ( n134 ) ) ;
INVX0_RVT ctmTdsLR_3_40 ( .A ( n33 ) , .Y ( popt_net_4 ) ) ;
NAND3X0_RVT ctmTdsLR_1_51 ( .A1 ( n96 ) , .A2 ( \intadd_1/SUM[5] ) , 
    .A3 ( popt_net_15 ) , .Y ( n147 ) ) ;
NAND2X0_RVT ctmTdsLR_1_56 ( .A1 ( n61 ) , .A2 ( n60 ) , .Y ( n62 ) ) ;
NAND2X0_RVT ctmTdsLR_1_57 ( .A1 ( n82 ) , .A2 ( n140 ) , .Y ( n84 ) ) ;
NAND2X0_RVT ctmTdsLR_2_65 ( .A1 ( n44 ) , .A2 ( n45 ) , .Y ( popt_net_18 ) ) ;
OR3X1_RVT ctmTdsLR_1_71 ( .A1 ( popt_net_22 ) , .A2 ( popt_net_23 ) , 
    .A3 ( n39 ) , .Y ( n140 ) ) ;
OR2X1_RVT ctmTdsLR_2_72 ( .A1 ( n38 ) , .A2 ( n78 ) , .Y ( popt_net_22 ) ) ;
INVX0_RVT ctmTdsLR_3_73 ( .A ( \intadd_3/SUM[2] ) , .Y ( popt_net_23 ) ) ;
endmodule


