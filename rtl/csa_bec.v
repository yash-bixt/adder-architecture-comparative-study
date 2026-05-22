////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2025, Shiv Nadar University, Delhi NCR, India. All Rights
// Reserved. Permission to use, copy, modify and distribute this software for
// educational, research, and not-for-profit purposes, without fee and without a
// signed license agreement, is hereby granted, provided that this paragraph and
// the following two paragraphs appear in all copies, modifications, and
// distributions.
//
// IN NO EVENT SHALL SHIV NADAR UNIVERSITY BE LIABLE TO ANY PARTY FOR DIRECT,
// INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST
// PROFITS, ARISING OUT OF THE USE OF THIS SOFTWARE.
//
// SHIV NADAR UNIVERSITY SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT
// NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
// PARTICULAR PURPOSE. THE SOFTWARE PROVIDED HEREUNDER IS PROVIDED "AS IS".
//
// Author: Yash Sharma
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps
`default_nettype none

module csla32_bec (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        Cin,
    output wire [31:0] Sum,
    output wire        Cout
);

    wire c2, c4, c7, c11, c17, c24;

    assign {c2, Sum[1:0]} = A[1:0] + B[1:0] + Cin;

    wire [1:0] s20;
    wire c20;
    wire [2:0] bec2;
    assign {c20, s20} = A[3:2] + B[3:2] + 1'b0;
    assign bec2 = {c20, s20} + 1'b1;
    assign {c4, Sum[3:2]} = c2 ? bec2 : {c20, s20};

    wire [2:0] s30;
    wire c30;
    wire [3:0] bec3;
    assign {c30, s30} = A[6:4] + B[6:4] + 1'b0;
    assign bec3 = {c30, s30} + 1'b1;
    assign {c7, Sum[6:4]} = c4 ? bec3 : {c30, s30};

    wire [3:0] s40;
    wire c40;
    wire [4:0] bec4;
    assign {c40, s40} = A[10:7] + B[10:7] + 1'b0;
    assign bec4 = {c40, s40} + 1'b1;
    assign {c11, Sum[10:7]} = c7 ? bec4 : {c40, s40};

    wire [5:0] s60;
    wire c60;
    wire [6:0] bec6;
    assign {c60, s60} = A[16:11] + B[16:11] + 1'b0;
    assign bec6 = {c60, s60} + 1'b1;
    assign {c17, Sum[16:11]} = c11 ? bec6 : {c60, s60};

    wire [6:0] s70;
    wire c70;
    wire [7:0] bec7;
    assign {c70, s70} = A[23:17] + B[23:17] + 1'b0;
    assign bec7 = {c70, s70} + 1'b1;
    assign {c24, Sum[23:17]} = c17 ? bec7 : {c70, s70};

    wire [7:0] s80;
    wire c80;
    wire [8:0] bec8;
    assign {c80, s80} = A[31:24] + B[31:24] + 1'b0;
    assign bec8 = {c80, s80} + 1'b1;
    assign {Cout, Sum[31:24]} = c24 ? bec8 : {c80, s80};

endmodule

`default_nettype wire
