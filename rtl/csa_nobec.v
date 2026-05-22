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

module csla32_nobec_flat (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        Cin,
    output wire [31:0] Sum,
    output wire        Cout
);

    wire c2, c4, c7, c11, c17, c24;

    assign {c2, Sum[1:0]} = A[1:0] + B[1:0] + Cin;

    wire [1:0] s20, s21;
    wire c20, c21;
    assign {c20, s20} = A[3:2] + B[3:2] + 1'b0;
    assign {c21, s21} = A[3:2] + B[3:2] + 1'b1;
    assign {c4, Sum[3:2]} = c2 ? {c21, s21} : {c20, s20};

    wire [2:0] s30, s31;
    wire c30, c31;
    assign {c30, s30} = A[6:4] + B[6:4] + 1'b0;
    assign {c31, s31} = A[6:4] + B[6:4] + 1'b1;
    assign {c7, Sum[6:4]} = c4 ? {c31, s31} : {c30, s30};

    wire [3:0] s40, s41;
    wire c40, c41;
    assign {c40, s40} = A[10:7] + B[10:7] + 1'b0;
    assign {c41, s41} = A[10:7] + B[10:7] + 1'b1;
    assign {c11, Sum[10:7]} = c7 ? {c41, s41} : {c40, s40};

    wire [5:0] s60, s61;
    wire c60, c61;
    assign {c60, s60} = A[16:11] + B[16:11] + 1'b0;
    assign {c61, s61} = A[16:11] + B[16:11] + 1'b1;
    assign {c17, Sum[16:11]} = c11 ? {c61, s61} : {c60, s60};

    wire [6:0] s70, s71;
    wire c70, c71;
    assign {c70, s70} = A[23:17] + B[23:17] + 1'b0;
    assign {c71, s71} = A[23:17] + B[23:17] + 1'b1;
    assign {c24, Sum[23:17]} = c17 ? {c71, s71} : {c70, s70};

    wire [7:0] s80, s81;
    wire c80, c81;
    assign {c80, s80} = A[31:24] + B[31:24] + 1'b0;
    assign {c81, s81} = A[31:24] + B[31:24] + 1'b1;
    assign {Cout, Sum[31:24]} = c24 ? {c81, s81} : {c80, s80};

endmodule

`default_nettype wire
