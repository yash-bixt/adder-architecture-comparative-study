// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:54:8
// Library Name: brent_kung_32_lib
// Block Name: brent_kung_32
// User Label: 
// Write Command: write_verilog output/brent_kung_32_icc2.v
module brent_kung_32 ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

XOR3X1_RVT U97 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .A3 ( n284 ) , 
    .Y ( Sum[22] ) ) ;
XOR3X1_RVT U98 ( .A1 ( n285 ) , .A2 ( B[25] ) , .A3 ( ropt_net_100 ) , 
    .Y ( Sum[25] ) ) ;
OA22X1_RVT ctmTdsLR_1_208 ( .A1 ( n154 ) , .A2 ( n153 ) , .A3 ( n276 ) , 
    .A4 ( popt_net_23 ) , .Y ( tmp_net97 ) ) ;
NAND2X0_RVT ctmTdsLR_1_132 ( .A1 ( A[9] ) , .A2 ( B[9] ) , .Y ( n276 ) ) ;
OR2X1_RVT U101 ( .A1 ( n279 ) , .A2 ( n136 ) , .Y ( n188 ) ) ;
AO22X1_RVT U102 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .A3 ( n285 ) , 
    .A4 ( n115 ) , .Y ( n186 ) ) ;
OR2X1_RVT U103 ( .A1 ( B[25] ) , .A2 ( A[25] ) , .Y ( n115 ) ) ;
AOI221X1_RVT ctmTdsLR_1_135 ( .A1 ( n195 ) , .A2 ( n191 ) , .A3 ( n204 ) , 
    .A4 ( n201 ) , .A5 ( n157 ) , .Y ( n200 ) ) ;
XOR3X1_RVT U105 ( .A1 ( A[8] ) , .A2 ( n292 ) , .A3 ( B[8] ) , 
    .Y ( ropt_net_99 ) ) ;
OR2X1_RVT U106 ( .A1 ( n141 ) , .A2 ( n140 ) , .Y ( n247 ) ) ;
INVX0_RVT ctmTdsLR_1_199 ( .A ( n247 ) , .Y ( tmp_net93 ) ) ;
NBUFFX2_RVT ZBUF_20_inst_212 ( .A ( A[31] ) , .Y ( ZBUF_20_6 ) ) ;
DELLN1X2_RVT ropt_h_inst_213 ( .A ( ropt_net_99 ) , .Y ( Sum[8] ) ) ;
AO22X1_RVT ctmTdsLR_1_102 ( .A1 ( B[27] ) , .A2 ( A[27] ) , .A3 ( n174 ) , 
    .A4 ( n171 ) , .Y ( ZBUF_2_2 ) ) ;
INVX0_RVT U111 ( .A ( A[11] ) , .Y ( n154 ) ) ;
XOR3X1_RVT ctmTdsLR_1_193 ( .A1 ( A[24] ) , .A2 ( B[24] ) , .A3 ( n181 ) , 
    .Y ( Sum[24] ) ) ;
AOI222X1_RVT ctmTdsLR_1_194 ( .A1 ( popt_net_33 ) , .A2 ( tmp_net89 ) , 
    .A3 ( popt_net_33 ) , .A4 ( n211 ) , .A5 ( popt_net_33 ) , .A6 ( n208 ) , 
    .Y ( n158 ) ) ;
XOR3X1_RVT ctmTdsLR_1_195 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .A3 ( n182 ) , 
    .Y ( Sum[30] ) ) ;
INVX0_RVT U115 ( .A ( n278 ) , .Y ( n152 ) ) ;
INVX0_RVT U116 ( .A ( B[11] ) , .Y ( n153 ) ) ;
INVX0_RVT U117 ( .A ( n281 ) , .Y ( n132 ) ) ;
NAND2X0_RVT ctmTdsLR_1_158 ( .A1 ( n261 ) , .A2 ( n263 ) , .Y ( tmp_net77 ) ) ;
AND2X1_RVT ctmTdsLR_2_159 ( .A1 ( n262 ) , .A2 ( tmp_net77 ) , .Y ( n249 ) ) ;
NAND2X0_RVT ctmTdsLR_1_160 ( .A1 ( n231 ) , .A2 ( n234 ) , .Y ( tmp_net78 ) ) ;
AND3X1_RVT ctmTdsLR_1_166 ( .A1 ( n232 ) , .A2 ( popt_net_44 ) , 
    .A3 ( n234 ) , .Y ( n217 ) ) ;
NAND2X0_RVT ctmTdsLR_1_136 ( .A1 ( n191 ) , .A2 ( n270 ) , .Y ( tmp_net68 ) ) ;
AND2X1_RVT ctmTdsLR_2_137 ( .A1 ( tmp_net68 ) , .A2 ( n269 ) , .Y ( n243 ) ) ;
AND2X1_RVT ctmTdsLR_2_161 ( .A1 ( tmp_net78 ) , .A2 ( n233 ) , .Y ( n223 ) ) ;
NAND2X0_RVT ctmTdsLR_1_162 ( .A1 ( popt_net_14 ) , .A2 ( n157 ) , 
    .Y ( tmp_net79 ) ) ;
INVX0_RVT U126 ( .A ( n266 ) , .Y ( n261 ) ) ;
NAND2X0_RVT ctmTdsLR_1_177 ( .A1 ( Cin ) , .A2 ( n283 ) , .Y ( tmp_net86 ) ) ;
INVX0_RVT U128 ( .A ( n252 ) , .Y ( n258 ) ) ;
OAI221X1_RVT ctmTdsLR_1_133 ( .A1 ( n257 ) , .A2 ( popt_net_67 ) , 
    .A3 ( n146 ) , .A4 ( n249 ) , .A5 ( n253 ) , .Y ( n147 ) ) ;
INVX0_RVT ctmTdsLR_2_134 ( .A ( n254 ) , .Y ( popt_net_67 ) ) ;
INVX0_RVT U131 ( .A ( n245 ) , .Y ( n149 ) ) ;
AND2X1_RVT ctmTdsLR_1_164 ( .A1 ( A[21] ) , .A2 ( B[21] ) , .Y ( tmp_net80 ) ) ;
AO22X1_RVT ctmTdsLR_2_165 ( .A1 ( tmp_net80 ) , .A2 ( popt_net_49 ) , 
    .A3 ( A[22] ) , .A4 ( B[22] ) , .Y ( popt_net_66 ) ) ;
INVX0_RVT ctmTdsLR_1_167 ( .A ( A[2] ) , .Y ( tmp_net81 ) ) ;
XOR3X1_RVT ctmTdsLR_1_196 ( .A1 ( B[29] ) , .A2 ( A[29] ) , .A3 ( n176 ) , 
    .Y ( Sum[29] ) ) ;
INVX0_RVT U136 ( .A ( n203 ) , .Y ( n157 ) ) ;
OA21X1_RVT ctmTdsLR_2_200 ( .A1 ( n248 ) , .A2 ( tmp_net93 ) , .A3 ( n249 ) , 
    .Y ( n260 ) ) ;
INVX0_RVT ctmTdsLR_1_201 ( .A ( ropt_net_102 ) , .Y ( tmp_net94 ) ) ;
DELLN1X2_RVT ropt_h_inst_214 ( .A ( A[25] ) , .Y ( ropt_net_100 ) ) ;
AO21X1_RVT U140 ( .A1 ( n191 ) , .A2 ( n159 ) , .A3 ( n158 ) , .Y ( n189 ) ) ;
XOR3X1_RVT ctmTdsLR_1_197 ( .A1 ( A[26] ) , .A2 ( B[26] ) , .A3 ( n186 ) , 
    .Y ( Sum[26] ) ) ;
AND2X1_RVT ctmTdsLR_2_120 ( .A1 ( popt_net_43 ) , .A2 ( n169 ) , 
    .Y ( popt_net_58 ) ) ;
NBUFFX2_RVT HFSBUF_156_2 ( .A ( n191 ) , .Y ( HFSNET_2 ) ) ;
MUX41X1_RVT ctmTdsLR_2_202 ( .A1 ( ropt_net_102 ) , .A3 ( tmp_net94 ) , 
    .A2 ( tmp_net94 ) , .A4 ( ropt_net_102 ) , .S0 ( n180 ) , 
    .S1 ( ZBUF_20_6 ) , .Y ( Sum[31] ) ) ;
NOR3X0_RVT ctmTdsLR_2_178 ( .A1 ( n188 ) , .A2 ( tmp_net86 ) , .A3 ( n289 ) , 
    .Y ( n138 ) ) ;
INVX0_RVT ctmTdsLR_2_168 ( .A ( B[2] ) , .Y ( tmp_net82 ) ) ;
INVX0_RVT ctmTdsLR_1_138 ( .A ( HFSNET_2 ) , .Y ( tmp_net69 ) ) ;
OAI21X1_RVT U148 ( .A1 ( A[9] ) , .A2 ( B[9] ) , .A3 ( n276 ) , .Y ( n245 ) ) ;
XOR3X1_RVT ctmTdsLR_1_198 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( ZBUF_2_2 ) , 
    .Y ( Sum[28] ) ) ;
NAND3X0_RVT ctmTdsLR_1_170 ( .A1 ( popt_net_17 ) , .A2 ( B[26] ) , 
    .A3 ( A[26] ) , .Y ( tmp_net83 ) ) ;
DELLN1X2_RVT ropt_h_inst_215 ( .A ( ropt_net_101 ) , .Y ( Sum[0] ) ) ;
AND2X1_RVT U152 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .Y ( n279 ) ) ;
NOR2X0_RVT U153 ( .A1 ( A[1] ) , .A2 ( B[1] ) , .Y ( n131 ) ) ;
INVX0_RVT ctmTdsLR_1_205 ( .A ( n264 ) , .Y ( tmp_net95 ) ) ;
AO21X1_RVT ctmTdsLR_2_206 ( .A1 ( n267 ) , .A2 ( n247 ) , .A3 ( n261 ) , 
    .Y ( tmp_net96 ) ) ;
AO221X1_RVT ctmTdsLR_1_179 ( .A1 ( tmp_net81 ) , .A2 ( tmp_net82 ) , 
    .A3 ( popt_net_54 ) , .A4 ( n281 ) , .A5 ( n131 ) , .Y ( tmp_net87 ) ) ;
OR2X2_RVT U157 ( .A1 ( n132 ) , .A2 ( n131 ) , .Y ( n289 ) ) ;
XOR2X1_RVT U158 ( .A1 ( A[2] ) , .A2 ( B[2] ) , .Y ( n283 ) ) ;
AND2X1_RVT ctmTdsLR_4_122 ( .A1 ( B[24] ) , .A2 ( A[24] ) , 
    .Y ( popt_net_59 ) ) ;
NOR2X0_RVT U160 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .Y ( n136 ) ) ;
AND2X1_RVT ctmTdsLR_2_58 ( .A1 ( popt_net_17 ) , .A2 ( n170 ) , 
    .Y ( popt_net_24 ) ) ;
NAND2X0_RVT ctmTdsLR_1_93 ( .A1 ( n202 ) , .A2 ( n204 ) , .Y ( n192 ) ) ;
OR2X1_RVT U163 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .Y ( n254 ) ) ;
NOR2X0_RVT U164 ( .A1 ( B[6] ) , .A2 ( A[6] ) , .Y ( n252 ) ) ;
NAND2X0_RVT U165 ( .A1 ( n254 ) , .A2 ( n258 ) , .Y ( n146 ) ) ;
OR2X1_RVT U166 ( .A1 ( A[5] ) , .A2 ( B[5] ) , .Y ( n263 ) ) ;
OR2X1_RVT U167 ( .A1 ( A[4] ) , .A2 ( B[4] ) , .Y ( n267 ) ) ;
NAND2X0_RVT U168 ( .A1 ( n263 ) , .A2 ( n267 ) , .Y ( n248 ) ) ;
NOR2X0_RVT U169 ( .A1 ( n146 ) , .A2 ( n248 ) , .Y ( n148 ) ) ;
OA21X1_RVT ctmTdsLR_2_139 ( .A1 ( n207 ) , .A2 ( tmp_net69 ) , .A3 ( n208 ) , 
    .Y ( n215 ) ) ;
NAND2X0_RVT U171 ( .A1 ( B[5] ) , .A2 ( A[5] ) , .Y ( n262 ) ) ;
MUX21X1_RVT ctmTdsLR_3_207 ( .A1 ( tmp_net95 ) , .A2 ( n264 ) , 
    .S0 ( tmp_net96 ) , .Y ( Sum[5] ) ) ;
NAND2X0_RVT U173 ( .A1 ( A[6] ) , .A2 ( B[6] ) , .Y ( n257 ) ) ;
NAND2X0_RVT U174 ( .A1 ( A[7] ) , .A2 ( B[7] ) , .Y ( n253 ) ) ;
NAND3X0_RVT ctmTdsLR_1_140 ( .A1 ( HFSNET_2 ) , .A2 ( n232 ) , .A3 ( n234 ) , 
    .Y ( tmp_net70 ) ) ;
AND2X1_RVT ctmTdsLR_2_141 ( .A1 ( tmp_net70 ) , .A2 ( n223 ) , .Y ( n230 ) ) ;
AO21X1_RVT U177 ( .A1 ( n247 ) , .A2 ( n148 ) , .A3 ( n147 ) , .Y ( n292 ) ) ;
OA22X1_RVT ctmTdsLR_1_92 ( .A1 ( HFSNET_1 ) , .A2 ( B[3] ) , .A3 ( n138 ) , 
    .A4 ( n139 ) , .Y ( n140 ) ) ;
NAND2X0_RVT ctmTdsLR_2_180 ( .A1 ( tmp_net87 ) , .A2 ( n294 ) , .Y ( n139 ) ) ;
OA222X1_RVT ctmTdsLR_1_174 ( .A1 ( B[23] ) , .A2 ( n274 ) , .A3 ( B[23] ) , 
    .A4 ( A[23] ) , .A5 ( n274 ) , .A6 ( A[23] ) , .Y ( n181 ) ) ;
OA21X1_RVT U181 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .A3 ( n297 ) , .Y ( n278 ) ) ;
AO21X1_RVT U182 ( .A1 ( n275 ) , .A2 ( n276 ) , .A3 ( n152 ) , .Y ( n296 ) ) ;
NOR2X0_RVT U183 ( .A1 ( A[19] ) , .A2 ( B[19] ) , .Y ( n196 ) ) ;
OR2X1_RVT U184 ( .A1 ( A[18] ) , .A2 ( B[18] ) , .Y ( n204 ) ) ;
NOR2X0_RVT U185 ( .A1 ( A[17] ) , .A2 ( B[17] ) , .Y ( n211 ) ) ;
OR2X1_RVT U186 ( .A1 ( A[16] ) , .A2 ( B[16] ) , .Y ( n219 ) ) ;
NOR2X0_RVT U187 ( .A1 ( A[15] ) , .A2 ( B[15] ) , .Y ( n226 ) ) ;
OR2X1_RVT U188 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( n234 ) ) ;
NOR2X0_RVT U189 ( .A1 ( A[13] ) , .A2 ( B[13] ) , .Y ( n239 ) ) ;
NOR2X0_RVT U190 ( .A1 ( A[12] ) , .A2 ( B[12] ) , .Y ( n237 ) ) ;
NOR2X0_RVT U191 ( .A1 ( n239 ) , .A2 ( n237 ) , .Y ( n232 ) ) ;
AND2X1_RVT ctmTdsLR_1_142 ( .A1 ( A[3] ) , .A2 ( B[3] ) , .Y ( n141 ) ) ;
AO21X1_RVT ctmTdsLR_1_97 ( .A1 ( n285 ) , .A2 ( popt_net_46 ) , 
    .A3 ( popt_net_48 ) , .Y ( n182 ) ) ;
NAND2X0_RVT U194 ( .A1 ( n219 ) , .A2 ( n217 ) , .Y ( n207 ) ) ;
NOR2X0_RVT U195 ( .A1 ( n211 ) , .A2 ( n207 ) , .Y ( n202 ) ) ;
AND2X1_RVT ctmTdsLR_2_98 ( .A1 ( popt_net_24 ) , .A2 ( n115 ) , 
    .Y ( popt_net_46 ) ) ;
NOR2X0_RVT U197 ( .A1 ( n196 ) , .A2 ( n192 ) , .Y ( n159 ) ) ;
NAND2X0_RVT U198 ( .A1 ( B[12] ) , .A2 ( A[12] ) , .Y ( n269 ) ) ;
NAND2X0_RVT U199 ( .A1 ( B[13] ) , .A2 ( A[13] ) , .Y ( n240 ) ) ;
OAI21X1_RVT U200 ( .A1 ( n269 ) , .A2 ( n239 ) , .A3 ( n240 ) , .Y ( n231 ) ) ;
NAND2X0_RVT U201 ( .A1 ( B[14] ) , .A2 ( A[14] ) , .Y ( n233 ) ) ;
INVX0_RVT ctmTdsLR_1_175 ( .A ( A[23] ) , .Y ( tmp_net85 ) ) ;
NAND2X0_RVT U203 ( .A1 ( B[15] ) , .A2 ( A[15] ) , .Y ( n227 ) ) ;
OAI21X1_RVT U204 ( .A1 ( n226 ) , .A2 ( n223 ) , .A3 ( n227 ) , .Y ( n216 ) ) ;
NAND2X0_RVT U205 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .Y ( n218 ) ) ;
OAI221X2_RVT ctmTdsLR_2_209 ( .A1 ( popt_net_23 ) , .A2 ( n275 ) , 
    .A3 ( popt_net_23 ) , .A4 ( n297 ) , .A5 ( tmp_net97 ) , .Y ( n191 ) ) ;
NAND2X0_RVT U207 ( .A1 ( B[17] ) , .A2 ( A[17] ) , .Y ( n212 ) ) ;
OAI21X1_RVT U208 ( .A1 ( n211 ) , .A2 ( n208 ) , .A3 ( n212 ) , .Y ( n201 ) ) ;
NAND2X0_RVT U209 ( .A1 ( B[18] ) , .A2 ( A[18] ) , .Y ( n203 ) ) ;
NAND2X0_RVT ctmTdsLR_1_143 ( .A1 ( A[2] ) , .A2 ( B[2] ) , .Y ( n294 ) ) ;
NAND2X0_RVT U211 ( .A1 ( B[19] ) , .A2 ( A[19] ) , .Y ( n197 ) ) ;
AND2X1_RVT ctmTdsLR_2_81 ( .A1 ( B[25] ) , .A2 ( A[25] ) , 
    .Y ( popt_net_42 ) ) ;
AND2X1_RVT ctmTdsLR_2_48 ( .A1 ( popt_net_11 ) , .A2 ( n175 ) , 
    .Y ( popt_net_17 ) ) ;
NAND2X0_RVT U214 ( .A1 ( n189 ) , .A2 ( B[20] ) , .Y ( n161 ) ) ;
NAND2X0_RVT U215 ( .A1 ( B[20] ) , .A2 ( A[20] ) , .Y ( n160 ) ) ;
OAI221X1_RVT ctmTdsLR_1_181 ( .A1 ( popt_net_5 ) , .A2 ( popt_net_3 ) , 
    .A3 ( popt_net_5 ) , .A4 ( n147 ) , .A5 ( n149 ) , .Y ( popt_net_51 ) ) ;
AND2X1_RVT ctmTdsLR_3_82 ( .A1 ( n170 ) , .A2 ( n115 ) , .Y ( popt_net_43 ) ) ;
NAND3X0_RVT ctmTdsLR_4_50 ( .A1 ( popt_net_10 ) , .A2 ( n172 ) , 
    .A3 ( n175 ) , .Y ( popt_net_18 ) ) ;
NAND3X0_RVT ctmTdsLR_5_51 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n175 ) , 
    .Y ( popt_net_19 ) ) ;
NAND3X0_RVT ctmTdsLR_1_90 ( .A1 ( popt_net_13 ) , .A2 ( n161 ) , 
    .A3 ( n160 ) , .Y ( n286 ) ) ;
NAND2X0_RVT ctmTdsLR_1_182 ( .A1 ( n216 ) , .A2 ( n219 ) , .Y ( tmp_net88 ) ) ;
NAND2X0_RVT ctmTdsLR_1_83 ( .A1 ( A[20] ) , .A2 ( n189 ) , 
    .Y ( popt_net_13 ) ) ;
OR2X1_RVT U223 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n169 ) ) ;
AO22X1_RVT U224 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n181 ) , 
    .A4 ( n169 ) , .Y ( n285 ) ) ;
OR2X1_RVT U225 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .Y ( n170 ) ) ;
NAND2X0_RVT ctmTdsLR_1_123 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .Y ( n266 ) ) ;
OR2X1_RVT U227 ( .A1 ( B[27] ) , .A2 ( A[27] ) , .Y ( n171 ) ) ;
AO21X1_RVT ctmTdsLR_1_128 ( .A1 ( n286 ) , .A2 ( popt_net_64 ) , 
    .A3 ( popt_net_66 ) , .Y ( n274 ) ) ;
OR2X1_RVT U229 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n172 ) ) ;
INVX0_RVT ctmTdsLR_2_44 ( .A ( n196 ) , .Y ( popt_net_14 ) ) ;
AO221X1_RVT ctmTdsLR_1_210 ( .A1 ( n147 ) , .A2 ( popt_net_3 ) , 
    .A3 ( popt_net_4 ) , .A4 ( n247 ) , .A5 ( popt_net_5 ) , 
    .Y ( tmp_net98 ) ) ;
OR2X1_RVT U232 ( .A1 ( B[29] ) , .A2 ( A[29] ) , .Y ( n175 ) ) ;
AND2X1_RVT ctmTdsLR_2_183 ( .A1 ( tmp_net88 ) , .A2 ( n218 ) , .Y ( n208 ) ) ;
OR2X1_RVT U234 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .Y ( n177 ) ) ;
AO22X1_RVT U235 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .A3 ( n182 ) , 
    .A4 ( n177 ) , .Y ( n180 ) ) ;
XNOR2X1_RVT ctmTdsLR_2_211 ( .A1 ( tmp_net98 ) , .A2 ( n245 ) , 
    .Y ( Sum[9] ) ) ;
OR2X1_RVT U237 ( .A1 ( ropt_net_102 ) , .A2 ( A[31] ) , .Y ( n179 ) ) ;
AO22X1_RVT U238 ( .A1 ( ropt_net_102 ) , .A2 ( ZBUF_20_6 ) , .A3 ( n180 ) , 
    .A4 ( ropt_net_110 ) , .Y ( Cout ) ) ;
DELLN1X2_RVT ropt_h_inst_216 ( .A ( B[31] ) , .Y ( ropt_net_102 ) ) ;
NBUFFX2_RVT ropt_h_inst_217 ( .A ( B[21] ) , .Y ( ropt_net_103 ) ) ;
NBUFFX2_RVT ropt_h_inst_218 ( .A ( B[23] ) , .Y ( ropt_net_104 ) ) ;
INVX0_RVT U242 ( .A ( n188 ) , .Y ( n280 ) ) ;
XOR2X1_RVT U243 ( .A1 ( n280 ) , .A2 ( Cin ) , .Y ( ropt_net_101 ) ) ;
MUX41X1_RVT ctmTdsLR_2_176 ( .A1 ( ropt_net_113 ) , .A3 ( tmp_net85 ) , 
    .A2 ( tmp_net85 ) , .A4 ( A[23] ) , .S0 ( n274 ) , .S1 ( ropt_net_104 ) , 
    .Y ( Sum[23] ) ) ;
NBUFFX2_RVT ropt_h_inst_219 ( .A ( A[11] ) , .Y ( ropt_net_105 ) ) ;
INVX0_RVT U246 ( .A ( n192 ) , .Y ( n195 ) ) ;
NAND2X0_RVT ctmTdsLR_1_144 ( .A1 ( A[1] ) , .A2 ( B[1] ) , .Y ( n281 ) ) ;
NAND2X0_RVT ctmTdsLR_1_145 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .Y ( n297 ) ) ;
INVX0_RVT U249 ( .A ( n196 ) , .Y ( n198 ) ) ;
NAND2X0_RVT U250 ( .A1 ( n198 ) , .A2 ( n197 ) , .Y ( n199 ) ) ;
XOR2X1_RVT U251 ( .A1 ( n200 ) , .A2 ( n199 ) , .Y ( Sum[19] ) ) ;
INVX0_RVT ctmTdsLR_1_185 ( .A ( popt_net_15 ) , .Y ( tmp_net89 ) ) ;
NAND2X0_RVT U253 ( .A1 ( n204 ) , .A2 ( n203 ) , .Y ( n205 ) ) ;
OA221X1_RVT ctmTdsLR_2_186 ( .A1 ( tmp_net79 ) , .A2 ( tmp_net79 ) , 
    .A3 ( tmp_net89 ) , .A4 ( n212 ) , .A5 ( n197 ) , .Y ( popt_net_33 ) ) ;
AND3X1_RVT ctmTdsLR_1_187 ( .A1 ( popt_net_18 ) , .A2 ( popt_net_19 ) , 
    .A3 ( popt_net_20 ) , .Y ( tmp_net90 ) ) ;
NAND3X0_RVT ctmTdsLR_2_188 ( .A1 ( popt_net_24 ) , .A2 ( B[25] ) , 
    .A3 ( A[25] ) , .Y ( tmp_net91 ) ) ;
XOR3X1_RVT ctmTdsLR_1_148 ( .A1 ( ropt_net_106 ) , .A2 ( ropt_net_112 ) , 
    .A3 ( n189 ) , .Y ( Sum[20] ) ) ;
INVX0_RVT U258 ( .A ( n211 ) , .Y ( n213 ) ) ;
NAND2X0_RVT U259 ( .A1 ( n213 ) , .A2 ( n212 ) , .Y ( n214 ) ) ;
XOR2X1_RVT U260 ( .A1 ( n215 ) , .A2 ( n214 ) , .Y ( Sum[17] ) ) ;
NAND3X0_RVT ctmTdsLR_3_189 ( .A1 ( tmp_net83 ) , .A2 ( tmp_net90 ) , 
    .A3 ( tmp_net91 ) , .Y ( popt_net_48 ) ) ;
NAND2X0_RVT U262 ( .A1 ( n219 ) , .A2 ( n218 ) , .Y ( n220 ) ) ;
AO22X1_RVT ctmTdsLR_1_190 ( .A1 ( B[26] ) , .A2 ( A[26] ) , .A3 ( n170 ) , 
    .A4 ( popt_net_42 ) , .Y ( tmp_net92 ) ) ;
INVX0_RVT ctmTdsLR_1_149 ( .A ( n205 ) , .Y ( tmp_net71 ) ) ;
AO21X1_RVT ctmTdsLR_2_150 ( .A1 ( n202 ) , .A2 ( HFSNET_2 ) , .A3 ( n201 ) , 
    .Y ( tmp_net72 ) ) ;
MUX21X1_RVT ctmTdsLR_3_151 ( .A1 ( tmp_net71 ) , .A2 ( n205 ) , 
    .S0 ( tmp_net72 ) , .Y ( Sum[18] ) ) ;
INVX0_RVT U267 ( .A ( n226 ) , .Y ( n228 ) ) ;
NAND2X0_RVT U268 ( .A1 ( n228 ) , .A2 ( n227 ) , .Y ( n229 ) ) ;
XOR2X1_RVT U269 ( .A1 ( n230 ) , .A2 ( n229 ) , .Y ( Sum[15] ) ) ;
AO221X1_RVT ctmTdsLR_2_191 ( .A1 ( n181 ) , .A2 ( popt_net_58 ) , 
    .A3 ( popt_net_43 ) , .A4 ( popt_net_59 ) , .A5 ( tmp_net92 ) , 
    .Y ( n174 ) ) ;
NAND2X0_RVT U271 ( .A1 ( n234 ) , .A2 ( n233 ) , .Y ( n235 ) ) ;
NBUFFX2_RVT ropt_h_inst_220 ( .A ( A[20] ) , .Y ( ropt_net_106 ) ) ;
INVX0_RVT U273 ( .A ( n237 ) , .Y ( n270 ) ) ;
INVX0_RVT ctmTdsLR_1_152 ( .A ( n220 ) , .Y ( tmp_net73 ) ) ;
AO21X1_RVT ctmTdsLR_2_153 ( .A1 ( n217 ) , .A2 ( HFSNET_2 ) , .A3 ( n216 ) , 
    .Y ( tmp_net74 ) ) ;
INVX0_RVT U276 ( .A ( n239 ) , .Y ( n241 ) ) ;
NAND2X0_RVT U277 ( .A1 ( n241 ) , .A2 ( n240 ) , .Y ( n242 ) ) ;
XOR2X1_RVT U278 ( .A1 ( n243 ) , .A2 ( n242 ) , .Y ( Sum[13] ) ) ;
NBUFFX2_RVT ropt_h_inst_221 ( .A ( B[27] ) , .Y ( ropt_net_107 ) ) ;
NBUFFX2_RVT ropt_h_inst_222 ( .A ( ropt_net_108 ) , .Y ( Sum[3] ) ) ;
NBUFFX2_RVT ropt_h_inst_223 ( .A ( B[11] ) , .Y ( ropt_net_109 ) ) ;
NBUFFX2_RVT ropt_h_inst_224 ( .A ( n179 ) , .Y ( ropt_net_110 ) ) ;
NBUFFX2_RVT ropt_h_inst_225 ( .A ( A[21] ) , .Y ( ropt_net_111 ) ) ;
OAI21X1_RVT U284 ( .A1 ( n252 ) , .A2 ( n260 ) , .A3 ( n257 ) , .Y ( n256 ) ) ;
NAND2X0_RVT U285 ( .A1 ( n254 ) , .A2 ( n253 ) , .Y ( n255 ) ) ;
XNOR2X1_RVT U286 ( .A1 ( n256 ) , .A2 ( n255 ) , .Y ( Sum[7] ) ) ;
NAND2X0_RVT U287 ( .A1 ( n258 ) , .A2 ( n257 ) , .Y ( n259 ) ) ;
XOR2X1_RVT U288 ( .A1 ( n260 ) , .A2 ( n259 ) , .Y ( Sum[6] ) ) ;
NBUFFX2_RVT ropt_h_inst_226 ( .A ( B[20] ) , .Y ( ropt_net_112 ) ) ;
NAND2X0_RVT U290 ( .A1 ( n263 ) , .A2 ( n262 ) , .Y ( n264 ) ) ;
NBUFFX2_RVT ropt_h_inst_227 ( .A ( A[23] ) , .Y ( ropt_net_113 ) ) ;
NAND2X0_RVT U292 ( .A1 ( n267 ) , .A2 ( n266 ) , .Y ( n268 ) ) ;
XNOR2X1_RVT U293 ( .A1 ( n268 ) , .A2 ( n247 ) , .Y ( Sum[4] ) ) ;
NAND2X0_RVT U294 ( .A1 ( n270 ) , .A2 ( n269 ) , .Y ( n271 ) ) ;
XNOR2X1_RVT U295 ( .A1 ( n191 ) , .A2 ( n271 ) , .Y ( Sum[12] ) ) ;
NAND2X0_RVT U298 ( .A1 ( n276 ) , .A2 ( n275 ) , .Y ( n277 ) ) ;
OA21X1_RVT U299 ( .A1 ( n278 ) , .A2 ( n277 ) , .A3 ( n296 ) , 
    .Y ( Sum[10] ) ) ;
INVX0_RVT U300 ( .A ( n279 ) , .Y ( n288 ) ) ;
NAND2X0_RVT U301 ( .A1 ( n280 ) , .A2 ( Cin ) , .Y ( n287 ) ) ;
AO21X1_RVT U302 ( .A1 ( n288 ) , .A2 ( n287 ) , .A3 ( n289 ) , .Y ( n291 ) ) ;
NAND2X0_RVT U303 ( .A1 ( n281 ) , .A2 ( n291 ) , .Y ( n282 ) ) ;
NAND2X0_RVT U304 ( .A1 ( n283 ) , .A2 ( n282 ) , .Y ( n293 ) ) ;
OA21X1_RVT U305 ( .A1 ( n283 ) , .A2 ( n282 ) , .A3 ( n293 ) , .Y ( Sum[2] ) ) ;
FADDX1_RVT U306 ( .A ( ropt_net_111 ) , .B ( ropt_net_103 ) , .CI ( n286 ) , 
    .CO ( n284 ) , .S ( Sum[21] ) ) ;
NAND3X0_RVT U307 ( .A1 ( n289 ) , .A2 ( n288 ) , .A3 ( n287 ) , .Y ( n290 ) ) ;
AND2X1_RVT U308 ( .A1 ( n291 ) , .A2 ( n290 ) , .Y ( Sum[1] ) ) ;
NAND2X0_RVT U309 ( .A1 ( n294 ) , .A2 ( n293 ) , .Y ( n295 ) ) ;
FADDX1_RVT U310 ( .A ( B[3] ) , .B ( HFSNET_1 ) , .CI ( n295 ) , 
    .S ( ropt_net_108 ) ) ;
NAND2X0_RVT U311 ( .A1 ( n297 ) , .A2 ( n296 ) , .Y ( n298 ) ) ;
FADDX1_RVT U312 ( .A ( ropt_net_109 ) , .B ( ropt_net_105 ) , .CI ( n298 ) , 
    .S ( Sum[11] ) ) ;
NBUFFX2_RVT HFSBUF_135_1 ( .A ( A[3] ) , .Y ( HFSNET_1 ) ) ;
MUX21X1_RVT ctmTdsLR_3_154 ( .A1 ( tmp_net73 ) , .A2 ( n220 ) , 
    .S0 ( tmp_net74 ) , .Y ( Sum[16] ) ) ;
INVX0_RVT ctmTdsLR_1_155 ( .A ( n235 ) , .Y ( tmp_net75 ) ) ;
AO21X1_RVT ctmTdsLR_2_156 ( .A1 ( n232 ) , .A2 ( HFSNET_2 ) , .A3 ( n231 ) , 
    .Y ( tmp_net76 ) ) ;
MUX21X1_RVT ctmTdsLR_3_157 ( .A1 ( tmp_net75 ) , .A2 ( n235 ) , 
    .S0 ( tmp_net76 ) , .Y ( Sum[14] ) ) ;
OR2X1_RVT ctmTdsLR_2_106 ( .A1 ( A[22] ) , .A2 ( B[22] ) , 
    .Y ( popt_net_49 ) ) ;
OA21X1_RVT ctmTdsLR_2_129 ( .A1 ( B[21] ) , .A2 ( A[21] ) , 
    .A3 ( popt_net_49 ) , .Y ( popt_net_64 ) ) ;
OR2X1_RVT ctmTdsLR_2_25 ( .A1 ( A[8] ) , .A2 ( B[8] ) , .Y ( popt_net_3 ) ) ;
AND2X1_RVT ctmTdsLR_3_26 ( .A1 ( n148 ) , .A2 ( popt_net_3 ) , 
    .Y ( popt_net_4 ) ) ;
AND2X1_RVT ctmTdsLR_4_27 ( .A1 ( A[8] ) , .A2 ( B[8] ) , .Y ( popt_net_5 ) ) ;
AO222X1_RVT ctmTdsLR_1_35 ( .A1 ( B[28] ) , .A2 ( A[28] ) , 
    .A3 ( popt_net_10 ) , .A4 ( n172 ) , .A5 ( n174 ) , .A6 ( popt_net_11 ) , 
    .Y ( n176 ) ) ;
AND2X1_RVT ctmTdsLR_2_36 ( .A1 ( B[27] ) , .A2 ( A[27] ) , 
    .Y ( popt_net_10 ) ) ;
AND2X1_RVT ctmTdsLR_3_37 ( .A1 ( n171 ) , .A2 ( n172 ) , .Y ( popt_net_11 ) ) ;
AND2X1_RVT ctmTdsLR_3_45 ( .A1 ( popt_net_14 ) , .A2 ( n204 ) , 
    .Y ( popt_net_15 ) ) ;
NAND2X0_RVT ctmTdsLR_6_52 ( .A1 ( B[29] ) , .A2 ( A[29] ) , 
    .Y ( popt_net_20 ) ) ;
AO22X1_RVT ctmTdsLR_3_55 ( .A1 ( n297 ) , .A2 ( n152 ) , .A3 ( n154 ) , 
    .A4 ( n153 ) , .Y ( popt_net_23 ) ) ;
INVX0_RVT ctmTdsLR_3_96 ( .A ( n226 ) , .Y ( popt_net_44 ) ) ;
AND3X1_RVT ctmTdsLR_1_108 ( .A1 ( popt_net_51 ) , .A2 ( popt_net_52 ) , 
    .A3 ( popt_net_53 ) , .Y ( n275 ) ) ;
NAND3X0_RVT ctmTdsLR_3_110 ( .A1 ( popt_net_4 ) , .A2 ( n149 ) , 
    .A3 ( n140 ) , .Y ( popt_net_52 ) ) ;
NAND3X0_RVT ctmTdsLR_4_111 ( .A1 ( popt_net_4 ) , .A2 ( n141 ) , 
    .A3 ( n149 ) , .Y ( popt_net_53 ) ) ;
NAND2X0_RVT ctmTdsLR_3_114 ( .A1 ( B[0] ) , .A2 ( A[0] ) , 
    .Y ( popt_net_54 ) ) ;
XOR3X1_RVT ctmTdsLR_1_118 ( .A1 ( ropt_net_107 ) , .A2 ( A[27] ) , 
    .A3 ( n174 ) , .Y ( Sum[27] ) ) ;
endmodule


