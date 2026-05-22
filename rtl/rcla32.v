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

//===========================================
// 4-bit Recursive Carry Lookahead Adder (submodule)
//===========================================
module rcla_4 (
    input  [3:0] A, B,
    input  Cin,
    output [3:0] Sum,
    output Cout
);
    wire [3:0] P, G;
    wire [4:0] C;

    assign C[0] = Cin;
    assign P = A ^ B;       // Propagate
    assign G = A & B;       // Generate

    // Lookahead carry logic
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
    assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |
                  (P[3] & P[2] & P[1] & P[0] & C[0]);

    // Sum generation
    assign Sum = P ^ C[3:0];
    assign Cout = C[4];
endmodule


//===========================================
// 32-bit Recursive Carry Lookahead Adder
//===========================================
module rcla_32 (
    input  [31:0] A, B,
    input  Cin,
    output [31:0] Sum,
    output Cout
);
    wire [8:0] carry;  // carry between 4-bit blocks
    assign carry[0] = Cin;

    // Instantiate eight 4-bit sub-RCLAs
    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : CLA_BLOCK
            rcla_4 u_rcla4 (
                .A(A[4*i + 3 : 4*i]),
                .B(B[4*i + 3 : 4*i]),
                .Cin(carry[i]),
                .Sum(Sum[4*i + 3 : 4*i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[8];
endmodule

