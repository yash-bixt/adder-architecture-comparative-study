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

module fa (
    input  wire A,
    input  wire B,
    input  wire Cin,
    output wire Sum,
    output wire Cout
);
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

module rcla2 (
    input  wire [1:0] A,
    input  wire [1:0] B,
    input  wire       Cin,
    output wire [1:0] Sum,
    output wire       Cout
);
    wire [1:0] p, g;
    wire c1, c2;

    assign p = A ^ B;
    assign g = A & B;

    assign c1 = g[0] | (p[0] & Cin);
    assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & Cin);

    assign Sum[0] = p[0] ^ Cin;
    assign Sum[1] = p[1] ^ c1;
    assign Cout   = c2;
endmodule

module rcla4 (
    input  wire [3:0] A,
    input  wire [3:0] B,
    input  wire       Cin,
    output wire [3:0] Sum,
    output wire       Cout
);
    wire [3:0] p, g;
    wire c1, c2, c3, c4;

    assign p = A ^ B;
    assign g = A & B;

    assign c1 = g[0] | (p[0] & Cin);
    assign c2 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & Cin);
    assign c3 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) |
                (p[2] & p[1] & p[0] & Cin);
    assign c4 = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) |
                (p[3] & p[2] & p[1] & g[0]) |
                (p[3] & p[2] & p[1] & p[0] & Cin);

    assign Sum[0] = p[0] ^ Cin;
    assign Sum[1] = p[1] ^ c1;
    assign Sum[2] = p[2] ^ c2;
    assign Sum[3] = p[3] ^ c3;

    assign Cout = c4;
endmodule

module hybrid_rcla32 (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        Cin,
    output wire [31:0] Sum,
    output wire        Cout
);
    wire c1, c2, c4;
    wire c8, c12, c16, c20, c24, c28;

    // LSB hybrid part: 2-bit RCA + 2-bit RCLA
    fa u_fa0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Sum(Sum[0]),
        .Cout(c1)
    );

    fa u_fa1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(c1),
        .Sum(Sum[1]),
        .Cout(c2)
    );

    rcla2 u_rcla2_lsb (
        .A(A[3:2]),
        .B(B[3:2]),
        .Cin(c2),
        .Sum(Sum[3:2]),
        .Cout(c4)
    );

    // Remaining 4-bit RCLA blocks
    rcla4 u_rcla4_0 (
        .A(A[7:4]),
        .B(B[7:4]),
        .Cin(c4),
        .Sum(Sum[7:4]),
        .Cout(c8)
    );

    rcla4 u_rcla4_1 (
        .A(A[11:8]),
        .B(B[11:8]),
        .Cin(c8),
        .Sum(Sum[11:8]),
        .Cout(c12)
    );

    rcla4 u_rcla4_2 (
        .A(A[15:12]),
        .B(B[15:12]),
        .Cin(c12),
        .Sum(Sum[15:12]),
        .Cout(c16)
    );

    rcla4 u_rcla4_3 (
        .A(A[19:16]),
        .B(B[19:16]),
        .Cin(c16),
        .Sum(Sum[19:16]),
        .Cout(c20)
    );

    rcla4 u_rcla4_4 (
        .A(A[23:20]),
        .B(B[23:20]),
        .Cin(c20),
        .Sum(Sum[23:20]),
        .Cout(c24)
    );

    rcla4 u_rcla4_5 (
        .A(A[27:24]),
        .B(B[27:24]),
        .Cin(c24),
        .Sum(Sum[27:24]),
        .Cout(c28)
    );

    rcla4 u_rcla4_6 (
        .A(A[31:28]),
        .B(B[31:28]),
        .Cin(c28),
        .Sum(Sum[31:28]),
        .Cout(Cout)
    );

endmodule

`default_nettype wire
