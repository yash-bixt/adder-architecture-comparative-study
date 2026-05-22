// IC Compiler II Version U-2022.12-SP3 Verilog Writer
// Generated on 5/21/2026 at 21:54:30
// Library Name: hca32_lib
// Block Name: han_carlson_32
// User Label: 
// Write Command: write_verilog output/hca32_icc2.v
module han_carlson_32 ( A , B , Cin , Sum , Cout ) ;
input  [31:0] A ;
input  [31:0] B ;
input  Cin ;
output [31:0] Sum ;
output Cout ;

INVX0_RVT U202 ( .A ( n217 ) , .Y ( n219 ) ) ;
NAND2X0_RVT U203 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .Y ( n326 ) ) ;
OA21X1_RVT U204 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .A3 ( n326 ) , .Y ( n324 ) ) ;
NAND2X0_RVT U205 ( .A1 ( n324 ) , .A2 ( n202 ) , .Y ( n217 ) ) ;
OA21X1_RVT U206 ( .A1 ( n324 ) , .A2 ( n202 ) , .A3 ( n217 ) , .Y ( Sum[2] ) ) ;
OR2X1_RVT U207 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .Y ( n322 ) ) ;
NAND2X0_RVT U208 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .Y ( n221 ) ) ;
OA21X1_RVT U209 ( .A1 ( B[28] ) , .A2 ( A[28] ) , .A3 ( n221 ) , .Y ( n375 ) ) ;
HADDX1_RVT U210 ( .A0 ( B[29] ) , .B0 ( A[29] ) , .SO ( n377 ) ) ;
AND2X1_RVT U211 ( .A1 ( n375 ) , .A2 ( n377 ) , .Y ( n320 ) ) ;
NAND2X0_RVT U212 ( .A1 ( A[26] ) , .A2 ( B[26] ) , .Y ( n203 ) ) ;
INVX0_RVT U213 ( .A ( n203 ) , .Y ( n316 ) ) ;
OA21X1_RVT U214 ( .A1 ( A[26] ) , .A2 ( B[26] ) , .A3 ( n203 ) , .Y ( n315 ) ) ;
NAND2X0_RVT U215 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .Y ( n220 ) ) ;
INVX0_RVT U216 ( .A ( n220 ) , .Y ( n370 ) ) ;
AO222X1_RVT U217 ( .A1 ( B[25] ) , .A2 ( n370 ) , .A3 ( B[25] ) , 
    .A4 ( A[25] ) , .A5 ( n370 ) , .A6 ( A[25] ) , .Y ( n287 ) ) ;
AO22X1_RVT U218 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .A3 ( n315 ) , 
    .A4 ( n287 ) , .Y ( n204 ) ) ;
OA22X1_RVT U219 ( .A1 ( n316 ) , .A2 ( n204 ) , .A3 ( A[27] ) , 
    .A4 ( B[27] ) , .Y ( n302 ) ) ;
NAND2X0_RVT U220 ( .A1 ( A[18] ) , .A2 ( B[18] ) , .Y ( n205 ) ) ;
INVX0_RVT U221 ( .A ( n205 ) , .Y ( n358 ) ) ;
AO222X1_RVT U222 ( .A1 ( B[19] ) , .A2 ( n358 ) , .A3 ( B[19] ) , 
    .A4 ( A[19] ) , .A5 ( n358 ) , .A6 ( A[19] ) , .Y ( n270 ) ) ;
OA21X1_RVT U223 ( .A1 ( A[18] ) , .A2 ( B[18] ) , .A3 ( n205 ) , .Y ( n359 ) ) ;
HADDX1_RVT U224 ( .A0 ( B[19] ) , .B0 ( A[19] ) , .SO ( n361 ) ) ;
NAND2X0_RVT U225 ( .A1 ( n359 ) , .A2 ( n361 ) , .Y ( n260 ) ) ;
INVX0_RVT U226 ( .A ( n260 ) , .Y ( n268 ) ) ;
NAND2X0_RVT U227 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .Y ( n209 ) ) ;
INVX0_RVT U228 ( .A ( n209 ) , .Y ( n354 ) ) ;
AO222X1_RVT U229 ( .A1 ( B[17] ) , .A2 ( n354 ) , .A3 ( B[17] ) , 
    .A4 ( A[17] ) , .A5 ( n354 ) , .A6 ( A[17] ) , .Y ( n253 ) ) ;
NAND2X0_RVT U230 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .Y ( n207 ) ) ;
OA21X1_RVT U231 ( .A1 ( A[22] ) , .A2 ( B[22] ) , .A3 ( n207 ) , .Y ( n367 ) ) ;
HADDX1_RVT U232 ( .A0 ( B[23] ) , .B0 ( A[23] ) , .SO ( n369 ) ) ;
AND2X1_RVT U233 ( .A1 ( n367 ) , .A2 ( n369 ) , .Y ( n283 ) ) ;
NAND2X0_RVT U234 ( .A1 ( B[20] ) , .A2 ( A[20] ) , .Y ( n206 ) ) ;
OA21X1_RVT U235 ( .A1 ( B[20] ) , .A2 ( A[20] ) , .A3 ( n206 ) , .Y ( n363 ) ) ;
HADDX1_RVT U236 ( .A0 ( B[21] ) , .B0 ( A[21] ) , .SO ( n365 ) ) ;
AND2X1_RVT U237 ( .A1 ( n363 ) , .A2 ( n365 ) , .Y ( n271 ) ) ;
AND2X1_RVT U238 ( .A1 ( n283 ) , .A2 ( n271 ) , .Y ( n299 ) ) ;
OA221X1_RVT U239 ( .A1 ( n270 ) , .A2 ( n268 ) , .A3 ( n270 ) , .A4 ( n253 ) , 
    .A5 ( n299 ) , .Y ( n208 ) ) ;
INVX0_RVT U240 ( .A ( n206 ) , .Y ( n362 ) ) ;
AO222X1_RVT U241 ( .A1 ( B[21] ) , .A2 ( n362 ) , .A3 ( B[21] ) , 
    .A4 ( A[21] ) , .A5 ( n362 ) , .A6 ( A[21] ) , .Y ( n269 ) ) ;
INVX0_RVT U242 ( .A ( n207 ) , .Y ( n366 ) ) ;
AO222X1_RVT U243 ( .A1 ( B[23] ) , .A2 ( n366 ) , .A3 ( B[23] ) , 
    .A4 ( A[23] ) , .A5 ( n366 ) , .A6 ( A[23] ) , .Y ( n288 ) ) ;
AO21X1_RVT U244 ( .A1 ( n283 ) , .A2 ( n269 ) , .A3 ( n288 ) , .Y ( n297 ) ) ;
OR2X1_RVT U245 ( .A1 ( n208 ) , .A2 ( n297 ) , .Y ( n281 ) ) ;
OA21X1_RVT U246 ( .A1 ( B[16] ) , .A2 ( A[16] ) , .A3 ( n209 ) , .Y ( n355 ) ) ;
HADDX1_RVT U247 ( .A0 ( B[17] ) , .B0 ( A[17] ) , .SO ( n357 ) ) ;
AND2X1_RVT U248 ( .A1 ( n355 ) , .A2 ( n357 ) , .Y ( n267 ) ) ;
AND3X1_RVT U249 ( .A1 ( n299 ) , .A2 ( n268 ) , .A3 ( n267 ) , .Y ( n279 ) ) ;
NAND2X0_RVT U250 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .Y ( n210 ) ) ;
INVX0_RVT U251 ( .A ( n210 ) , .Y ( n350 ) ) ;
AO222X1_RVT U252 ( .A1 ( B[15] ) , .A2 ( n350 ) , .A3 ( B[15] ) , 
    .A4 ( A[15] ) , .A5 ( n350 ) , .A6 ( A[15] ) , .Y ( n254 ) ) ;
OA21X1_RVT U253 ( .A1 ( A[14] ) , .A2 ( B[14] ) , .A3 ( n210 ) , .Y ( n351 ) ) ;
HADDX1_RVT U254 ( .A0 ( B[15] ) , .B0 ( A[15] ) , .SO ( n353 ) ) ;
AND2X1_RVT U255 ( .A1 ( n351 ) , .A2 ( n353 ) , .Y ( n266 ) ) ;
NAND2X0_RVT U256 ( .A1 ( A[12] ) , .A2 ( B[12] ) , .Y ( n211 ) ) ;
INVX0_RVT U257 ( .A ( n211 ) , .Y ( n346 ) ) ;
AO222X1_RVT U258 ( .A1 ( n346 ) , .A2 ( B[13] ) , .A3 ( n346 ) , 
    .A4 ( A[13] ) , .A5 ( B[13] ) , .A6 ( A[13] ) , .Y ( n259 ) ) ;
OA21X1_RVT U259 ( .A1 ( A[12] ) , .A2 ( B[12] ) , .A3 ( n211 ) , .Y ( n347 ) ) ;
HADDX1_RVT U260 ( .A0 ( B[13] ) , .B0 ( A[13] ) , .SO ( n349 ) ) ;
AND2X1_RVT U261 ( .A1 ( n347 ) , .A2 ( n349 ) , .Y ( n245 ) ) ;
AND2X1_RVT U262 ( .A1 ( n266 ) , .A2 ( n245 ) , .Y ( n276 ) ) ;
NAND2X0_RVT U263 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .Y ( n212 ) ) ;
OA21X1_RVT U264 ( .A1 ( A[10] ) , .A2 ( B[10] ) , .A3 ( n212 ) , .Y ( n343 ) ) ;
HADDX1_RVT U265 ( .A0 ( B[11] ) , .B0 ( A[11] ) , .SO ( n345 ) ) ;
AND2X1_RVT U266 ( .A1 ( n343 ) , .A2 ( n345 ) , .Y ( n252 ) ) ;
NAND2X0_RVT U267 ( .A1 ( B[8] ) , .A2 ( A[8] ) , .Y ( n214 ) ) ;
INVX0_RVT U268 ( .A ( n214 ) , .Y ( n338 ) ) ;
AO222X1_RVT U269 ( .A1 ( B[9] ) , .A2 ( n338 ) , .A3 ( B[9] ) , .A4 ( A[9] ) , 
    .A5 ( n338 ) , .A6 ( A[9] ) , .Y ( n232 ) ) ;
INVX0_RVT U270 ( .A ( n212 ) , .Y ( n342 ) ) ;
AO222X1_RVT U271 ( .A1 ( B[11] ) , .A2 ( n342 ) , .A3 ( B[11] ) , 
    .A4 ( A[11] ) , .A5 ( n342 ) , .A6 ( A[11] ) , .Y ( n244 ) ) ;
AO21X1_RVT U272 ( .A1 ( n252 ) , .A2 ( n232 ) , .A3 ( n244 ) , .Y ( n239 ) ) ;
XNOR2X1_RVT ctmTdsLR_1_7 ( .A1 ( n273 ) , .A2 ( n351 ) , .Y ( Sum[14] ) ) ;
MUX21X1_RVT ctmTdsLR_1_8 ( .A1 ( n236 ) , .A2 ( n256 ) , .S0 ( n343 ) , 
    .Y ( Sum[10] ) ) ;
OA21X1_RVT U275 ( .A1 ( B[8] ) , .A2 ( A[8] ) , .A3 ( n214 ) , .Y ( n339 ) ) ;
HADDX1_RVT U276 ( .A0 ( B[9] ) , .B0 ( A[9] ) , .SO ( n341 ) ) ;
AND2X1_RVT U277 ( .A1 ( n339 ) , .A2 ( n341 ) , .Y ( n243 ) ) ;
AND2X1_RVT U278 ( .A1 ( n252 ) , .A2 ( n243 ) , .Y ( n277 ) ) ;
NAND2X0_RVT U279 ( .A1 ( A[6] ) , .A2 ( B[6] ) , .Y ( n335 ) ) ;
OA21X1_RVT U280 ( .A1 ( A[6] ) , .A2 ( B[6] ) , .A3 ( n335 ) , .Y ( n333 ) ) ;
HADDX1_RVT U281 ( .A0 ( B[7] ) , .B0 ( A[7] ) , .SO ( n337 ) ) ;
AND2X1_RVT U282 ( .A1 ( n333 ) , .A2 ( n337 ) , .Y ( n242 ) ) ;
NAND2X0_RVT U283 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .Y ( n216 ) ) ;
INVX0_RVT U284 ( .A ( n216 ) , .Y ( n329 ) ) ;
AO222X1_RVT U285 ( .A1 ( B[5] ) , .A2 ( n329 ) , .A3 ( B[5] ) , .A4 ( A[5] ) , 
    .A5 ( n329 ) , .A6 ( A[5] ) , .Y ( n227 ) ) ;
INVX0_RVT U286 ( .A ( n335 ) , .Y ( n215 ) ) ;
AO222X1_RVT U287 ( .A1 ( B[7] ) , .A2 ( n215 ) , .A3 ( B[7] ) , .A4 ( A[7] ) , 
    .A5 ( n215 ) , .A6 ( A[7] ) , .Y ( n233 ) ) ;
AO21X1_RVT U288 ( .A1 ( n242 ) , .A2 ( n227 ) , .A3 ( n233 ) , .Y ( n240 ) ) ;
OA21X1_RVT U289 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .A3 ( n216 ) , .Y ( n330 ) ) ;
HADDX1_RVT U290 ( .A0 ( B[5] ) , .B0 ( A[5] ) , .SO ( n332 ) ) ;
AND2X1_RVT U291 ( .A1 ( n330 ) , .A2 ( n332 ) , .Y ( n230 ) ) ;
AND2X1_RVT U292 ( .A1 ( n337 ) , .A2 ( n230 ) , .Y ( n238 ) ) ;
HADDX1_RVT U293 ( .A0 ( B[3] ) , .B0 ( A[3] ) , .SO ( n328 ) ) ;
INVX0_RVT U294 ( .A ( n326 ) , .Y ( n218 ) ) ;
AO222X1_RVT U295 ( .A1 ( B[3] ) , .A2 ( n218 ) , .A3 ( B[3] ) , .A4 ( A[3] ) , 
    .A5 ( n218 ) , .A6 ( A[3] ) , .Y ( n228 ) ) ;
AO21X1_RVT U296 ( .A1 ( n328 ) , .A2 ( n219 ) , .A3 ( n228 ) , .Y ( n226 ) ) ;
OA222X1_RVT U297 ( .A1 ( n240 ) , .A2 ( n333 ) , .A3 ( n240 ) , .A4 ( n238 ) , 
    .A5 ( n240 ) , .A6 ( n226 ) , .Y ( n231 ) ) ;
OA222X1_RVT U298 ( .A1 ( n278 ) , .A2 ( n276 ) , .A3 ( n278 ) , .A4 ( n277 ) , 
    .A5 ( n278 ) , .A6 ( n231 ) , .Y ( n251 ) ) ;
OA21X1_RVT U299 ( .A1 ( B[24] ) , .A2 ( A[24] ) , .A3 ( n220 ) , .Y ( n371 ) ) ;
HADDX1_RVT U300 ( .A0 ( B[25] ) , .B0 ( A[25] ) , .SO ( n373 ) ) ;
AND2X1_RVT U301 ( .A1 ( n371 ) , .A2 ( n373 ) , .Y ( n289 ) ) ;
NAND2X0_RVT U302 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .Y ( n306 ) ) ;
OA21X1_RVT U303 ( .A1 ( A[27] ) , .A2 ( B[27] ) , .A3 ( n306 ) , .Y ( n313 ) ) ;
AND3X1_RVT U304 ( .A1 ( n315 ) , .A2 ( n289 ) , .A3 ( n313 ) , .Y ( n304 ) ) ;
OA221X1_RVT U305 ( .A1 ( n281 ) , .A2 ( n279 ) , .A3 ( n281 ) , .A4 ( n251 ) , 
    .A5 ( n304 ) , .Y ( n222 ) ) ;
INVX0_RVT U306 ( .A ( n221 ) , .Y ( n374 ) ) ;
AO222X1_RVT U307 ( .A1 ( B[29] ) , .A2 ( n374 ) , .A3 ( B[29] ) , 
    .A4 ( A[29] ) , .A5 ( n374 ) , .A6 ( A[29] ) , .Y ( n317 ) ) ;
AO221X1_RVT U308 ( .A1 ( n320 ) , .A2 ( n302 ) , .A3 ( n320 ) , .A4 ( n222 ) , 
    .A5 ( n317 ) , .Y ( n223 ) ) ;
AO22X1_RVT U309 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .A3 ( n322 ) , 
    .A4 ( n223 ) , .Y ( n224 ) ) ;
AO222X1_RVT U310 ( .A1 ( ropt_net_1 ) , .A2 ( ropt_net_17 ) , 
    .A3 ( ropt_net_1 ) , .A4 ( n224 ) , .A5 ( HFSNET_0 ) , .A6 ( n224 ) , 
    .Y ( ropt_net_20 ) ) ;
FADDX1_RVT U311 ( .A ( HFSNET_4 ) , .B ( A[0] ) , .CI ( B[0] ) , 
    .CO ( n225 ) , .S ( ropt_net_0 ) ) ;
FADDX1_RVT U312 ( .A ( ropt_net_5 ) , .B ( A[1] ) , .CI ( n225 ) , 
    .CO ( n202 ) , .S ( ropt_net_16 ) ) ;
HADDX2_RVT U313 ( .A0 ( n330 ) , .B0 ( n226 ) , .SO ( Sum[4] ) ) ;
AND3X1_RVT U314 ( .A1 ( n328 ) , .A2 ( n324 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n229 ) ) ;
AO221X1_RVT U315 ( .A1 ( n230 ) , .A2 ( n229 ) , .A3 ( n230 ) , .A4 ( n228 ) , 
    .A5 ( n227 ) , .Y ( n234 ) ) ;
HADDX1_RVT U316 ( .A0 ( n333 ) , .B0 ( n234 ) , .SO ( Sum[6] ) ) ;
HADDX1_RVT U317 ( .A0 ( ropt_net_18 ) , .B0 ( n231 ) , .SO ( Sum[8] ) ) ;
AOI21X1_RVT U318 ( .A1 ( n243 ) , .A2 ( n233 ) , .A3 ( n232 ) , .Y ( n247 ) ) ;
NAND3X0_RVT U319 ( .A1 ( n234 ) , .A2 ( n242 ) , .A3 ( n243 ) , .Y ( n235 ) ) ;
NAND2X0_RVT U320 ( .A1 ( n247 ) , .A2 ( n235 ) , .Y ( n236 ) ) ;
INVX0_RVT U321 ( .A ( n236 ) , .Y ( n256 ) ) ;
DELLN1X2_RVT ropt_h_inst_10 ( .A ( ropt_net_0 ) , .Y ( Sum[0] ) ) ;
NBUFFX2_RVT ropt_h_inst_11 ( .A ( B[31] ) , .Y ( ropt_net_1 ) ) ;
AND3X1_RVT U324 ( .A1 ( n333 ) , .A2 ( n238 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n241 ) ) ;
AO221X1_RVT U325 ( .A1 ( n277 ) , .A2 ( n241 ) , .A3 ( n277 ) , .A4 ( n240 ) , 
    .A5 ( n239 ) , .Y ( n263 ) ) ;
HADDX1_RVT U326 ( .A0 ( n347 ) , .B0 ( n263 ) , .SO ( Sum[12] ) ) ;
NAND2X0_RVT U327 ( .A1 ( n245 ) , .A2 ( n252 ) , .Y ( n248 ) ) ;
NAND3X0_RVT U328 ( .A1 ( n243 ) , .A2 ( n242 ) , .A3 ( HFSNET_3 ) , 
    .Y ( n246 ) ) ;
AOI21X1_RVT U329 ( .A1 ( n245 ) , .A2 ( n244 ) , .A3 ( n259 ) , .Y ( n255 ) ) ;
OA221X1_RVT U330 ( .A1 ( n248 ) , .A2 ( n247 ) , .A3 ( n248 ) , .A4 ( n246 ) , 
    .A5 ( n255 ) , .Y ( n273 ) ) ;
AO221X1_RVT ctmTdsLR_1_9 ( .A1 ( n279 ) , .A2 ( n278 ) , .A3 ( n300 ) , 
    .A4 ( n277 ) , .A5 ( n281 ) , .Y ( n282 ) ) ;
NBUFFX2_RVT ropt_h_inst_12 ( .A ( ropt_net_2 ) , .Y ( Sum[30] ) ) ;
NBUFFX2_RVT ropt_h_inst_13 ( .A ( ropt_net_3 ) , .Y ( Sum[11] ) ) ;
HADDX1_RVT U334 ( .A0 ( n355 ) , .B0 ( n251 ) , .SO ( Sum[16] ) ) ;
NAND3X0_RVT U335 ( .A1 ( n267 ) , .A2 ( n276 ) , .A3 ( n252 ) , .Y ( n285 ) ) ;
NAND2X0_RVT U336 ( .A1 ( n267 ) , .A2 ( n266 ) , .Y ( n261 ) ) ;
AOI21X1_RVT U337 ( .A1 ( n267 ) , .A2 ( n254 ) , .A3 ( n253 ) , .Y ( n272 ) ) ;
OA21X1_RVT U338 ( .A1 ( n255 ) , .A2 ( n261 ) , .A3 ( n272 ) , .Y ( n286 ) ) ;
OA21X1_RVT U339 ( .A1 ( n256 ) , .A2 ( n285 ) , .A3 ( n286 ) , .Y ( n258 ) ) ;
INVX0_RVT U340 ( .A ( n359 ) , .Y ( n257 ) ) ;
HADDX1_RVT U341 ( .A0 ( n258 ) , .B0 ( n257 ) , .SO ( Sum[18] ) ) ;
INVX0_RVT U342 ( .A ( n270 ) , .Y ( n296 ) ) ;
INVX0_RVT U343 ( .A ( n259 ) , .Y ( n262 ) ) ;
AO221X1_RVT U344 ( .A1 ( n272 ) , .A2 ( n262 ) , .A3 ( n272 ) , .A4 ( n261 ) , 
    .A5 ( n260 ) , .Y ( n295 ) ) ;
NAND4X0_RVT U345 ( .A1 ( n267 ) , .A2 ( n268 ) , .A3 ( n276 ) , .A4 ( n263 ) , 
    .Y ( n264 ) ) ;
NAND3X0_RVT U346 ( .A1 ( n296 ) , .A2 ( n295 ) , .A3 ( n264 ) , .Y ( n265 ) ) ;
HADDX1_RVT U347 ( .A0 ( ropt_net_19 ) , .B0 ( n265 ) , .SO ( Sum[20] ) ) ;
NAND4X0_RVT U348 ( .A1 ( n271 ) , .A2 ( n268 ) , .A3 ( n267 ) , .A4 ( n266 ) , 
    .Y ( n309 ) ) ;
NAND2X0_RVT U349 ( .A1 ( n271 ) , .A2 ( n268 ) , .Y ( n284 ) ) ;
AOI21X1_RVT U350 ( .A1 ( n271 ) , .A2 ( n270 ) , .A3 ( n269 ) , .Y ( n291 ) ) ;
OA21X1_RVT U351 ( .A1 ( n272 ) , .A2 ( n284 ) , .A3 ( n291 ) , .Y ( n310 ) ) ;
OA21X1_RVT U352 ( .A1 ( n273 ) , .A2 ( n309 ) , .A3 ( n310 ) , .Y ( n275 ) ) ;
INVX0_RVT U353 ( .A ( n367 ) , .Y ( n274 ) ) ;
HADDX1_RVT U354 ( .A0 ( n275 ) , .B0 ( n274 ) , .SO ( Sum[22] ) ) ;
AND3X1_RVT U355 ( .A1 ( n279 ) , .A2 ( n276 ) , .A3 ( HFSNET_5 ) , 
    .Y ( n300 ) ) ;
NBUFFX2_RVT ropt_h_inst_14 ( .A ( ropt_net_4 ) , .Y ( Sum[5] ) ) ;
NBUFFX2_RVT ropt_h_inst_15 ( .A ( B[1] ) , .Y ( ropt_net_5 ) ) ;
HADDX1_RVT U358 ( .A0 ( n371 ) , .B0 ( n282 ) , .SO ( Sum[24] ) ) ;
NAND2X0_RVT U359 ( .A1 ( n289 ) , .A2 ( n283 ) , .Y ( n307 ) ) ;
INVX0_RVT HFSINV_1647_1 ( .A ( Cin ) , .Y ( HFSNET_1 ) ) ;
AO221X1_RVT U361 ( .A1 ( n286 ) , .A2 ( HFSNET_1 ) , .A3 ( n286 ) , 
    .A4 ( n285 ) , .A5 ( n284 ) , .Y ( n290 ) ) ;
AOI21X1_RVT U362 ( .A1 ( n289 ) , .A2 ( n288 ) , .A3 ( n287 ) , .Y ( n312 ) ) ;
OA221X1_RVT U363 ( .A1 ( n307 ) , .A2 ( n291 ) , .A3 ( n307 ) , .A4 ( n290 ) , 
    .A5 ( n312 ) , .Y ( n293 ) ) ;
INVX0_RVT U364 ( .A ( n315 ) , .Y ( n292 ) ) ;
HADDX1_RVT U365 ( .A0 ( n293 ) , .B0 ( n292 ) , .SO ( Sum[26] ) ) ;
AO21X1_RVT U366 ( .A1 ( n315 ) , .A2 ( HFSNET_2 ) , .A3 ( n316 ) , 
    .Y ( n294 ) ) ;
HADDX1_RVT U367 ( .A0 ( n313 ) , .B0 ( n294 ) , .SO ( Sum[27] ) ) ;
NAND2X0_RVT U369 ( .A1 ( n296 ) , .A2 ( n295 ) , .Y ( n298 ) ) ;
AO221X1_RVT U370 ( .A1 ( 1'b1 ) , .A2 ( n300 ) , .A3 ( n299 ) , .A4 ( n298 ) , 
    .A5 ( n297 ) , .Y ( n303 ) ) ;
AO21X1_RVT U371 ( .A1 ( n304 ) , .A2 ( n303 ) , .A3 ( n302 ) , .Y ( n305 ) ) ;
HADDX1_RVT U372 ( .A0 ( n375 ) , .B0 ( n305 ) , .SO ( Sum[28] ) ) ;
INVX0_RVT U373 ( .A ( n306 ) , .Y ( n319 ) ) ;
AO221X1_RVT U374 ( .A1 ( n310 ) , .A2 ( n309 ) , .A3 ( n310 ) , 
    .A4 ( HFSNET_1 ) , .A5 ( n307 ) , .Y ( n311 ) ) ;
NAND2X0_RVT U375 ( .A1 ( n312 ) , .A2 ( n311 ) , .Y ( n314 ) ) ;
OA221X1_RVT U376 ( .A1 ( n316 ) , .A2 ( n315 ) , .A3 ( n316 ) , .A4 ( n314 ) , 
    .A5 ( n313 ) , .Y ( n318 ) ) ;
AO221X1_RVT U377 ( .A1 ( n320 ) , .A2 ( n319 ) , .A3 ( n320 ) , .A4 ( n318 ) , 
    .A5 ( n317 ) , .Y ( n321 ) ) ;
FADDX1_RVT U378 ( .A ( B[30] ) , .B ( A[30] ) , .CI ( n321 ) , 
    .S ( ropt_net_2 ) ) ;
AO22X1_RVT U379 ( .A1 ( B[30] ) , .A2 ( A[30] ) , .A3 ( HFSNET_5 ) , 
    .A4 ( n322 ) , .Y ( n323 ) ) ;
FADDX1_RVT U380 ( .A ( ropt_net_1 ) , .B ( HFSNET_0 ) , .CI ( n323 ) , 
    .S ( Sum[31] ) ) ;
NAND2X0_RVT U381 ( .A1 ( n324 ) , .A2 ( HFSNET_3 ) , .Y ( n325 ) ) ;
NAND2X0_RVT U382 ( .A1 ( n326 ) , .A2 ( n325 ) , .Y ( n327 ) ) ;
HADDX1_RVT U383 ( .A0 ( n328 ) , .B0 ( n327 ) , .SO ( ropt_net_14 ) ) ;
AO21X1_RVT U384 ( .A1 ( n330 ) , .A2 ( HFSNET_2 ) , .A3 ( n329 ) , 
    .Y ( n331 ) ) ;
HADDX1_RVT U385 ( .A0 ( n332 ) , .B0 ( n331 ) , .SO ( ropt_net_4 ) ) ;
NAND2X0_RVT U386 ( .A1 ( n333 ) , .A2 ( HFSNET_3 ) , .Y ( n334 ) ) ;
NAND2X0_RVT U387 ( .A1 ( n335 ) , .A2 ( n334 ) , .Y ( n336 ) ) ;
HADDX1_RVT U388 ( .A0 ( n337 ) , .B0 ( n336 ) , .SO ( ropt_net_7 ) ) ;
AO21X1_RVT U389 ( .A1 ( n339 ) , .A2 ( HFSNET_5 ) , .A3 ( n338 ) , 
    .Y ( n340 ) ) ;
HADDX1_RVT U390 ( .A0 ( n341 ) , .B0 ( n340 ) , .SO ( ropt_net_11 ) ) ;
AO21X1_RVT U391 ( .A1 ( n343 ) , .A2 ( HFSNET_3 ) , .A3 ( n342 ) , 
    .Y ( n344 ) ) ;
HADDX1_RVT U392 ( .A0 ( n345 ) , .B0 ( n344 ) , .SO ( ropt_net_3 ) ) ;
AO21X1_RVT U393 ( .A1 ( n347 ) , .A2 ( HFSNET_4 ) , .A3 ( n346 ) , 
    .Y ( n348 ) ) ;
HADDX1_RVT U394 ( .A0 ( ropt_net_15 ) , .B0 ( n348 ) , .SO ( Sum[13] ) ) ;
AO21X1_RVT U395 ( .A1 ( n351 ) , .A2 ( HFSNET_2 ) , .A3 ( n350 ) , 
    .Y ( n352 ) ) ;
HADDX1_RVT U396 ( .A0 ( n353 ) , .B0 ( n352 ) , .SO ( ropt_net_6 ) ) ;
AO21X1_RVT U397 ( .A1 ( n355 ) , .A2 ( HFSNET_2 ) , .A3 ( n354 ) , 
    .Y ( n356 ) ) ;
HADDX1_RVT U398 ( .A0 ( n357 ) , .B0 ( n356 ) , .SO ( ropt_net_9 ) ) ;
AO21X1_RVT U399 ( .A1 ( n359 ) , .A2 ( HFSNET_2 ) , .A3 ( n358 ) , 
    .Y ( n360 ) ) ;
HADDX1_RVT U400 ( .A0 ( n361 ) , .B0 ( n360 ) , .SO ( Sum[19] ) ) ;
AO21X1_RVT U401 ( .A1 ( n363 ) , .A2 ( HFSNET_2 ) , .A3 ( n362 ) , 
    .Y ( n364 ) ) ;
HADDX1_RVT U402 ( .A0 ( n365 ) , .B0 ( n364 ) , .SO ( ropt_net_10 ) ) ;
AO21X1_RVT U403 ( .A1 ( n367 ) , .A2 ( HFSNET_2 ) , .A3 ( n366 ) , 
    .Y ( n368 ) ) ;
HADDX1_RVT U404 ( .A0 ( n369 ) , .B0 ( n368 ) , .SO ( ropt_net_12 ) ) ;
AO21X1_RVT U405 ( .A1 ( n371 ) , .A2 ( HFSNET_5 ) , .A3 ( n370 ) , 
    .Y ( n372 ) ) ;
HADDX1_RVT U406 ( .A0 ( n373 ) , .B0 ( n372 ) , .SO ( ropt_net_8 ) ) ;
AO21X1_RVT U407 ( .A1 ( n375 ) , .A2 ( HFSNET_5 ) , .A3 ( n374 ) , 
    .Y ( n376 ) ) ;
HADDX1_RVT U408 ( .A0 ( n377 ) , .B0 ( n376 ) , .SO ( ropt_net_13 ) ) ;
NBUFFX2_RVT HFSBUF_17_0 ( .A ( ropt_net_17 ) , .Y ( HFSNET_0 ) ) ;
NBUFFX2_RVT HFSBUF_1091_2 ( .A ( HFSNET_5 ) , .Y ( HFSNET_2 ) ) ;
NBUFFX2_RVT HFSBUF_154_3 ( .A ( HFSNET_5 ) , .Y ( HFSNET_3 ) ) ;
NBUFFX2_RVT HFSBUF_24_4 ( .A ( HFSNET_5 ) , .Y ( HFSNET_4 ) ) ;
NBUFFX2_RVT HFSBUF_1602_5 ( .A ( Cin ) , .Y ( HFSNET_5 ) ) ;
AO221X1_RVT ctmTdsLR_1_6 ( .A1 ( n266 ) , .A2 ( n259 ) , .A3 ( n276 ) , 
    .A4 ( n239 ) , .A5 ( n254 ) , .Y ( n278 ) ) ;
NBUFFX2_RVT ropt_h_inst_16 ( .A ( ropt_net_6 ) , .Y ( Sum[15] ) ) ;
NBUFFX2_RVT ropt_h_inst_17 ( .A ( ropt_net_7 ) , .Y ( Sum[7] ) ) ;
NBUFFX2_RVT ropt_h_inst_18 ( .A ( ropt_net_8 ) , .Y ( Sum[25] ) ) ;
NBUFFX2_RVT ropt_h_inst_19 ( .A ( ropt_net_9 ) , .Y ( Sum[17] ) ) ;
NBUFFX2_RVT ropt_h_inst_20 ( .A ( ropt_net_10 ) , .Y ( Sum[21] ) ) ;
NBUFFX2_RVT ropt_h_inst_21 ( .A ( ropt_net_11 ) , .Y ( Sum[9] ) ) ;
NBUFFX2_RVT ropt_h_inst_22 ( .A ( ropt_net_12 ) , .Y ( Sum[23] ) ) ;
NBUFFX2_RVT ropt_h_inst_23 ( .A ( ropt_net_13 ) , .Y ( Sum[29] ) ) ;
NBUFFX2_RVT ropt_h_inst_24 ( .A ( ropt_net_14 ) , .Y ( Sum[3] ) ) ;
NBUFFX2_RVT ropt_h_inst_25 ( .A ( n349 ) , .Y ( ropt_net_15 ) ) ;
NBUFFX2_RVT ropt_h_inst_26 ( .A ( ropt_net_16 ) , .Y ( Sum[1] ) ) ;
NBUFFX2_RVT ropt_h_inst_27 ( .A ( A[31] ) , .Y ( ropt_net_17 ) ) ;
NBUFFX2_RVT ropt_h_inst_28 ( .A ( n339 ) , .Y ( ropt_net_18 ) ) ;
NBUFFX2_RVT ropt_h_inst_29 ( .A ( n363 ) , .Y ( ropt_net_19 ) ) ;
NBUFFX2_RVT ropt_h_inst_32 ( .A ( ropt_net_20 ) , .Y ( Cout ) ) ;
endmodule


