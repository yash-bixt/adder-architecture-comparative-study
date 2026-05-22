// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:52:46
// Library Name: csla32_bec_lib
// Block Name: csla32_bec
// User Label: 
// Write Command: write_verilog output/csla32_bec_icc2.v
module csla32_bec ( A , B , Cin , Sum , Cout ) ;
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
INVX0_RVT U65 ( .A ( n125 ) , .Y ( n147 ) ) ;
AND3X1_RVT ctmTdsLR_1_93 ( .A1 ( \intadd_1/SUM[1] ) , .A2 ( popt_net_10 ) , 
    .A3 ( n77 ) , .Y ( popt_net_13 ) ) ;
OR2X1_RVT U67 ( .A1 ( n64 ) , .A2 ( n122 ) , .Y ( n123 ) ) ;
INVX0_RVT U68 ( .A ( \intadd_3/SUM[0] ) , .Y ( n64 ) ) ;
NAND2X0_RVT ctmTdsLR_1_58 ( .A1 ( popt_net_21 ) , .A2 ( n78 ) , .Y ( n126 ) ) ;
AND4X1_RVT ctmTdsLR_1_94 ( .A1 ( \intadd_0/SUM[2] ) , 
    .A2 ( \intadd_0/SUM[1] ) , .A3 ( popt_net_1 ) , .A4 ( n88 ) , 
    .Y ( popt_net_9 ) ) ;
INVX0_RVT ctmTdsLR_1_100 ( .A ( n83 ) , .Y ( tmp_net41 ) ) ;
NAND2X0_RVT ctmTdsLR_1_83 ( .A1 ( n75 ) , .A2 ( popt_net_34 ) , 
    .Y ( tmp_net36 ) ) ;
NAND4X0_RVT ctmTdsLR_2_84 ( .A1 ( tmp_net36 ) , .A2 ( popt_net_25 ) , 
    .A3 ( \intadd_1/SUM[5] ) , .A4 ( popt_net_21 ) , .Y ( popt_net_35 ) ) ;
INVX0_RVT U74 ( .A ( \intadd_3/SUM[2] ) , .Y ( n68 ) ) ;
AND4X1_RVT ctmTdsLR_1_103 ( .A1 ( \intadd_2/SUM[4] ) , .A2 ( tmp_net39 ) , 
    .A3 ( \intadd_2/SUM[2] ) , .A4 ( popt_net_17 ) , .Y ( popt_net_23 ) ) ;
INVX0_RVT U76 ( .A ( n134 ) , .Y ( n33 ) ) ;
AND2X1_RVT ctmTdsLR_2_59 ( .A1 ( \intadd_1/SUM[2] ) , .A2 ( popt_net_13 ) , 
    .Y ( popt_net_21 ) ) ;
INVX0_RVT ctmTdsLR_1_85 ( .A ( \intadd_3/SUM[2] ) , .Y ( tmp_net37 ) ) ;
INVX0_RVT U79 ( .A ( B[1] ) , .Y ( n39 ) ) ;
INVX0_RVT U80 ( .A ( \intadd_3/SUM[1] ) , .Y ( n65 ) ) ;
INVX0_RVT U81 ( .A ( \intadd_2/SUM[3] ) , .Y ( n73 ) ) ;
INVX0_RVT U82 ( .A ( \intadd_1/SUM[0] ) , .Y ( n79 ) ) ;
INVX0_RVT U83 ( .A ( \intadd_1/SUM[3] ) , .Y ( n83 ) ) ;
DELLN1X2_RVT ropt_h_inst_104 ( .A ( ropt_net_42 ) , .Y ( Sum[0] ) ) ;
INVX0_RVT U85 ( .A ( \intadd_0/SUM[0] ) , .Y ( n91 ) ) ;
INVX0_RVT U86 ( .A ( n46 ) , .Y ( n48 ) ) ;
AND2X1_RVT U87 ( .A1 ( n45 ) , .A2 ( n44 ) , .Y ( n111 ) ) ;
INVX0_RVT U88 ( .A ( n47 ) , .Y ( n49 ) ) ;
INVX0_RVT U89 ( .A ( n57 ) , .Y ( n60 ) ) ;
AND2X1_RVT ctmTdsLR_1_52 ( .A1 ( popt_net_17 ) , .A2 ( n94 ) , .Y ( n138 ) ) ;
AOI21X1_RVT ctmTdsLR_2_86 ( .A1 ( n114 ) , .A2 ( tmp_net37 ) , .A3 ( n34 ) , 
    .Y ( Sum[10] ) ) ;
INVX0_RVT U92 ( .A ( \intadd_2/n1 ) , .Y ( n75 ) ) ;
INVX0_RVT ctmTdsLR_1_87 ( .A ( \intadd_2/SUM[1] ) , .Y ( tmp_net38 ) ) ;
AOI21X1_RVT ctmTdsLR_2_88 ( .A1 ( n101 ) , .A2 ( tmp_net38 ) , .A3 ( n138 ) , 
    .Y ( Sum[13] ) ) ;
AND2X1_RVT ctmTdsLR_2_53 ( .A1 ( \intadd_2/SUM[1] ) , .A2 ( popt_net_15 ) , 
    .Y ( popt_net_17 ) ) ;
INVX0_RVT ctmTdsLR_1_95 ( .A ( n73 ) , .Y ( tmp_net39 ) ) ;
NAND3X0_RVT ctmTdsLR_1_89 ( .A1 ( n45 ) , .A2 ( n44 ) , .A3 ( n110 ) , 
    .Y ( n109 ) ) ;
NAND2X0_RVT ctmTdsLR_2_101 ( .A1 ( \intadd_1/SUM[4] ) , .A2 ( tmp_net41 ) , 
    .Y ( n32 ) ) ;
NBUFFX2_RVT ropt_h_inst_105 ( .A ( n77 ) , .Y ( ropt_net_43 ) ) ;
OA21X1_RVT U100 ( .A1 ( n55 ) , .A2 ( n54 ) , .A3 ( n103 ) , .Y ( Sum[5] ) ) ;
OA21X1_RVT U101 ( .A1 ( n63 ) , .A2 ( n62 ) , .A3 ( n122 ) , .Y ( Sum[7] ) ) ;
NBUFFX2_RVT ropt_h_inst_106 ( .A ( \intadd_0/n1 ) , .Y ( ropt_net_44 ) ) ;
OA21X1_RVT U103 ( .A1 ( n94 ) , .A2 ( n93 ) , .A3 ( n100 ) , .Y ( Sum[11] ) ) ;
OA21X1_RVT U104 ( .A1 ( n132 ) , .A2 ( \intadd_2/SUM[3] ) , .A3 ( n131 ) , 
    .Y ( Sum[15] ) ) ;
OA21X1_RVT U105 ( .A1 ( n78 ) , .A2 ( ropt_net_43 ) , .A3 ( n112 ) , 
    .Y ( Sum[17] ) ) ;
OA21X1_RVT U106 ( .A1 ( n89 ) , .A2 ( n88 ) , .A3 ( n90 ) , .Y ( Sum[24] ) ) ;
OR2X2_RVT U107 ( .A1 ( n32 ) , .A2 ( n126 ) , .Y ( n133 ) ) ;
OR2X2_RVT U110 ( .A1 ( n83 ) , .A2 ( n126 ) , .Y ( n120 ) ) ;
OR2X2_RVT U111 ( .A1 ( n33 ) , .A2 ( \intadd_1/n1 ) , .Y ( n89 ) ) ;
OR2X2_RVT U112 ( .A1 ( \intadd_3/n1 ) , .A2 ( n34 ) , .Y ( n94 ) ) ;
NOR3X0_RVT U113 ( .A1 ( n65 ) , .A2 ( n68 ) , .A3 ( n123 ) , .Y ( n34 ) ) ;
OR2X1_RVT U114 ( .A1 ( n65 ) , .A2 ( n123 ) , .Y ( n114 ) ) ;
NAND2X0_RVT U115 ( .A1 ( n94 ) , .A2 ( n93 ) , .Y ( n100 ) ) ;
INVX0_RVT ctmTdsLR_1_97 ( .A ( \intadd_1/SUM[0] ) , .Y ( tmp_net40 ) ) ;
NOR2X0_RVT U117 ( .A1 ( n79 ) , .A2 ( n112 ) , .Y ( n80 ) ) ;
AOI21X1_RVT ctmTdsLR_2_98 ( .A1 ( n112 ) , .A2 ( tmp_net40 ) , .A3 ( n80 ) , 
    .Y ( Sum[18] ) ) ;
NAND4X0_RVT ctmTdsLR_1_99 ( .A1 ( n89 ) , .A2 ( \intadd_0/SUM[5] ) , 
    .A3 ( \intadd_0/SUM[4] ) , .A4 ( popt_net_19 ) , .Y ( n125 ) ) ;
OR2X2_RVT U122 ( .A1 ( n73 ) , .A2 ( n130 ) , .Y ( n131 ) ) ;
NAND2X0_RVT ctmTdsLR_1_40 ( .A1 ( n89 ) , .A2 ( popt_net_9 ) , .Y ( n142 ) ) ;
NAND2X0_RVT U124 ( .A1 ( n107 ) , .A2 ( n75 ) , .Y ( n78 ) ) ;
NAND2X0_RVT U125 ( .A1 ( n138 ) , .A2 ( \intadd_2/SUM[2] ) , .Y ( n130 ) ) ;
NAND2X0_RVT U126 ( .A1 ( A[0] ) , .A2 ( Cin ) , .Y ( n38 ) ) ;
OR2X2_RVT U127 ( .A1 ( n91 ) , .A2 ( n90 ) , .Y ( n128 ) ) ;
AO21X1_RVT U129 ( .A1 ( A[0] ) , .A2 ( Cin ) , .A3 ( A[1] ) , .Y ( n145 ) ) ;
NAND3X0_RVT U130 ( .A1 ( Cin ) , .A2 ( A[0] ) , .A3 ( A[1] ) , .Y ( n144 ) ) ;
NAND2X0_RVT U131 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .Y ( n61 ) ) ;
INVX0_RVT U132 ( .A ( n61 ) , .Y ( \intadd_3/CI ) ) ;
NAND2X0_RVT U133 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .Y ( n67 ) ) ;
INVX0_RVT U134 ( .A ( n67 ) , .Y ( \intadd_2/CI ) ) ;
NAND2X0_RVT U135 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n76 ) ) ;
INVX0_RVT U136 ( .A ( n76 ) , .Y ( \intadd_1/CI ) ) ;
NAND2X0_RVT U137 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n87 ) ) ;
INVX0_RVT U138 ( .A ( n87 ) , .Y ( \intadd_0/CI ) ) ;
OA21X1_RVT U139 ( .A1 ( Cin ) , .A2 ( A[0] ) , .A3 ( n38 ) , .Y ( n137 ) ) ;
NAND2X0_RVT U140 ( .A1 ( B[0] ) , .A2 ( n137 ) , .Y ( n40 ) ) ;
NAND2X0_RVT U141 ( .A1 ( n40 ) , .A2 ( n39 ) , .Y ( n42 ) ) ;
INVX0_RVT U142 ( .A ( n40 ) , .Y ( n136 ) ) ;
INVX0_RVT U143 ( .A ( n144 ) , .Y ( n41 ) ) ;
AO221X1_RVT U144 ( .A1 ( B[1] ) , .A2 ( n136 ) , .A3 ( n145 ) , .A4 ( n42 ) , 
    .A5 ( n41 ) , .Y ( n45 ) ) ;
OA21X1_RVT U146 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .A3 ( n46 ) , .Y ( n44 ) ) ;
INVX0_RVT U147 ( .A ( n111 ) , .Y ( n43 ) ) ;
OA21X1_RVT U148 ( .A1 ( n45 ) , .A2 ( n44 ) , .A3 ( n43 ) , .Y ( Sum[2] ) ) ;
NAND2X0_RVT U149 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .Y ( n50 ) ) ;
OA21X1_RVT U150 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .A3 ( n50 ) , .Y ( n53 ) ) ;
FADDX1_RVT U151 ( .A ( B[3] ) , .B ( A[3] ) , .CI ( n48 ) , .CO ( n47 ) , 
    .S ( n110 ) ) ;
NAND2X0_RVT U152 ( .A1 ( n49 ) , .A2 ( n109 ) , .Y ( n52 ) ) ;
NAND2X0_RVT U153 ( .A1 ( n53 ) , .A2 ( n52 ) , .Y ( n51 ) ) ;
OA21X1_RVT U154 ( .A1 ( n53 ) , .A2 ( n52 ) , .A3 ( n51 ) , .Y ( Sum[4] ) ) ;
INVX0_RVT U155 ( .A ( n50 ) , .Y ( n56 ) ) ;
AND2X1_RVT U156 ( .A1 ( n53 ) , .A2 ( n52 ) , .Y ( n54 ) ) ;
NAND2X0_RVT U157 ( .A1 ( n55 ) , .A2 ( n54 ) , .Y ( n103 ) ) ;
FADDX1_RVT U158 ( .A ( A[5] ) , .B ( B[5] ) , .CI ( n56 ) , .CO ( n58 ) , 
    .S ( n55 ) ) ;
FADDX1_RVT U159 ( .A ( A[6] ) , .B ( B[6] ) , .CI ( n58 ) , .CO ( n57 ) , 
    .S ( n105 ) ) ;
NAND2X0_RVT U161 ( .A1 ( n60 ) , .A2 ( n104 ) , .Y ( n63 ) ) ;
OA21X1_RVT U162 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .A3 ( n61 ) , .Y ( n62 ) ) ;
NAND2X0_RVT U163 ( .A1 ( n62 ) , .A2 ( n63 ) , .Y ( n122 ) ) ;
INVX0_RVT U164 ( .A ( n123 ) , .Y ( n66 ) ) ;
OA21X1_RVT U165 ( .A1 ( \intadd_3/SUM[1] ) , .A2 ( n66 ) , .A3 ( n114 ) , 
    .Y ( Sum[9] ) ) ;
OA21X1_RVT U166 ( .A1 ( B[11] ) , .A2 ( A[11] ) , .A3 ( n67 ) , .Y ( n93 ) ) ;
OA21X1_RVT U170 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .A3 ( n76 ) , .Y ( n77 ) ) ;
NAND2X0_RVT U171 ( .A1 ( n77 ) , .A2 ( n78 ) , .Y ( n112 ) ) ;
OA21X1_RVT U172 ( .A1 ( \intadd_1/SUM[1] ) , .A2 ( n80 ) , .A3 ( n81 ) , 
    .Y ( Sum[19] ) ) ;
INVX0_RVT U173 ( .A ( n120 ) , .Y ( n85 ) ) ;
OA21X1_RVT U174 ( .A1 ( \intadd_1/SUM[4] ) , .A2 ( n85 ) , .A3 ( n133 ) , 
    .Y ( Sum[22] ) ) ;
OA21X1_RVT U175 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n87 ) , .Y ( n88 ) ) ;
NAND2X0_RVT U176 ( .A1 ( n88 ) , .A2 ( n89 ) , .Y ( n90 ) ) ;
INVX0_RVT U177 ( .A ( n90 ) , .Y ( n92 ) ) ;
OA21X1_RVT U178 ( .A1 ( \intadd_0/SUM[0] ) , .A2 ( n92 ) , .A3 ( n128 ) , 
    .Y ( Sum[25] ) ) ;
INVX0_RVT U179 ( .A ( n139 ) , .Y ( n99 ) ) ;
OA21X1_RVT U180 ( .A1 ( n99 ) , .A2 ( \intadd_0/SUM[4] ) , .A3 ( n118 ) , 
    .Y ( Sum[29] ) ) ;
INVX0_RVT U181 ( .A ( n100 ) , .Y ( n102 ) ) ;
OA21X1_RVT U182 ( .A1 ( n102 ) , .A2 ( \intadd_2/SUM[0] ) , .A3 ( n101 ) , 
    .Y ( Sum[12] ) ) ;
INVX0_RVT U183 ( .A ( n103 ) , .Y ( n106 ) ) ;
OA21X1_RVT U184 ( .A1 ( n106 ) , .A2 ( n105 ) , .A3 ( n104 ) , .Y ( Sum[6] ) ) ;
INVX0_RVT U185 ( .A ( n131 ) , .Y ( n108 ) ) ;
OA21X1_RVT U186 ( .A1 ( n108 ) , .A2 ( \intadd_2/SUM[4] ) , .A3 ( n107 ) , 
    .Y ( Sum[16] ) ) ;
OA21X1_RVT U187 ( .A1 ( n111 ) , .A2 ( n110 ) , .A3 ( n109 ) , .Y ( Sum[3] ) ) ;
INVX0_RVT U191 ( .A ( n118 ) , .Y ( n119 ) ) ;
OA21X1_RVT U193 ( .A1 ( n119 ) , .A2 ( \intadd_0/SUM[5] ) , .A3 ( n125 ) , 
    .Y ( Sum[30] ) ) ;
INVX0_RVT U194 ( .A ( n126 ) , .Y ( n121 ) ) ;
OA21X1_RVT U195 ( .A1 ( n121 ) , .A2 ( \intadd_1/SUM[3] ) , .A3 ( n120 ) , 
    .Y ( Sum[21] ) ) ;
INVX0_RVT U196 ( .A ( n122 ) , .Y ( n124 ) ) ;
OA21X1_RVT U197 ( .A1 ( n124 ) , .A2 ( \intadd_3/SUM[0] ) , .A3 ( n123 ) , 
    .Y ( Sum[8] ) ) ;
AO21X1_RVT U198 ( .A1 ( \intadd_0/SUM[6] ) , .A2 ( n147 ) , 
    .A3 ( ropt_net_44 ) , .Y ( Cout ) ) ;
INVX0_RVT U199 ( .A ( n81 ) , .Y ( n127 ) ) ;
OA21X1_RVT U200 ( .A1 ( n127 ) , .A2 ( \intadd_1/SUM[2] ) , .A3 ( n126 ) , 
    .Y ( Sum[20] ) ) ;
INVX0_RVT U201 ( .A ( n128 ) , .Y ( n129 ) ) ;
OA21X1_RVT U202 ( .A1 ( n129 ) , .A2 ( \intadd_0/SUM[1] ) , .A3 ( n141 ) , 
    .Y ( Sum[26] ) ) ;
INVX0_RVT U203 ( .A ( n130 ) , .Y ( n132 ) ) ;
INVX0_RVT U204 ( .A ( n133 ) , .Y ( n135 ) ) ;
OA21X1_RVT U205 ( .A1 ( n135 ) , .A2 ( \intadd_1/SUM[5] ) , .A3 ( n134 ) , 
    .Y ( Sum[23] ) ) ;
OA21X1_RVT U206 ( .A1 ( n137 ) , .A2 ( B[0] ) , .A3 ( ZBUF_2_6 ) , 
    .Y ( ropt_net_42 ) ) ;
OA21X1_RVT U207 ( .A1 ( n138 ) , .A2 ( \intadd_2/SUM[2] ) , .A3 ( n130 ) , 
    .Y ( Sum[14] ) ) ;
INVX0_RVT U208 ( .A ( n142 ) , .Y ( n140 ) ) ;
OA21X1_RVT U209 ( .A1 ( n140 ) , .A2 ( \intadd_0/SUM[3] ) , .A3 ( n139 ) , 
    .Y ( Sum[28] ) ) ;
INVX0_RVT U210 ( .A ( n141 ) , .Y ( n143 ) ) ;
OA21X1_RVT U211 ( .A1 ( n143 ) , .A2 ( \intadd_0/SUM[2] ) , .A3 ( n142 ) , 
    .Y ( Sum[27] ) ) ;
NAND2X0_RVT U212 ( .A1 ( n145 ) , .A2 ( n144 ) , .Y ( n146 ) ) ;
XOR3X1_RVT U213 ( .A1 ( ZBUF_2_6 ) , .A2 ( B[1] ) , .A3 ( n146 ) , 
    .Y ( Sum[1] ) ) ;
HADDX1_RVT U214 ( .A0 ( \intadd_0/SUM[6] ) , .B0 ( n147 ) , .SO ( Sum[31] ) ) ;
NBUFFX2_RVT ZBUF_2_inst_27 ( .A ( n40 ) , .Y ( ZBUF_2_6 ) ) ;
NAND4X0_RVT ctmTdsLR_1_29 ( .A1 ( n89 ) , .A2 ( \intadd_0/SUM[1] ) , 
    .A3 ( popt_net_1 ) , .A4 ( n88 ) , .Y ( n141 ) ) ;
INVX0_RVT ctmTdsLR_3_31 ( .A ( n91 ) , .Y ( popt_net_1 ) ) ;
NAND2X0_RVT ctmTdsLR_1_36 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .Y ( n46 ) ) ;
AND2X1_RVT ctmTdsLR_2_38 ( .A1 ( n105 ) , .A2 ( n55 ) , .Y ( popt_net_6 ) ) ;
NAND2X0_RVT ctmTdsLR_1_44 ( .A1 ( popt_net_13 ) , .A2 ( n78 ) , .Y ( n81 ) ) ;
INVX0_RVT ctmTdsLR_5_48 ( .A ( n79 ) , .Y ( popt_net_10 ) ) ;
NAND2X0_RVT ctmTdsLR_1_49 ( .A1 ( popt_net_15 ) , .A2 ( n94 ) , .Y ( n101 ) ) ;
AND2X1_RVT ctmTdsLR_2_50 ( .A1 ( \intadd_2/SUM[0] ) , .A2 ( n93 ) , 
    .Y ( popt_net_15 ) ) ;
NAND2X0_RVT ctmTdsLR_1_55 ( .A1 ( n89 ) , .A2 ( popt_net_19 ) , .Y ( n139 ) ) ;
AND2X1_RVT ctmTdsLR_2_56 ( .A1 ( \intadd_0/SUM[3] ) , .A2 ( popt_net_9 ) , 
    .Y ( popt_net_19 ) ) ;
NAND3X0_RVT ctmTdsLR_1_61 ( .A1 ( n89 ) , .A2 ( \intadd_0/SUM[4] ) , 
    .A3 ( popt_net_19 ) , .Y ( n118 ) ) ;
NAND2X0_RVT ctmTdsLR_1_63 ( .A1 ( popt_net_23 ) , .A2 ( n94 ) , .Y ( n107 ) ) ;
INVX0_RVT ctmTdsLR_5_69 ( .A ( n32 ) , .Y ( popt_net_25 ) ) ;
NAND2X0_RVT ctmTdsLR_1_70 ( .A1 ( popt_net_6 ) , .A2 ( n54 ) , .Y ( n104 ) ) ;
AO21X1_RVT ctmTdsLR_1_78 ( .A1 ( popt_net_33 ) , .A2 ( n75 ) , 
    .A3 ( popt_net_35 ) , .Y ( n134 ) ) ;
INVX0_RVT ctmTdsLR_2_79 ( .A ( n94 ) , .Y ( popt_net_33 ) ) ;
INVX0_RVT ctmTdsLR_4_81 ( .A ( popt_net_23 ) , .Y ( popt_net_34 ) ) ;
endmodule


