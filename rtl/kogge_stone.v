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


module kogge_stone_adder #(
    parameter N = 32
)(
    input  wire [N-1:0] A,
    input  wire [N-1:0] B,
    input  wire         Cin,
    output wire [N-1:0] Sum,
    output wire         Cout
);

    // ------------------------------------------------------------------
    // Propagate and Generate signals
    // ------------------------------------------------------------------
    wire [N-1:0] P [0:$clog2(N)];
    wire [N-1:0] G [0:$clog2(N)];

    genvar i, j;

    // Stage 0: Pre-processing
    generate
        for (i = 0; i < N; i = i + 1) begin
            assign P[0][i] = A[i] ^ B[i];
            assign G[0][i] = A[i] & B[i];
        end
    endgenerate

    // ------------------------------------------------------------------
    // Parallel Prefix Tree (Kogge–Stone)
    // ------------------------------------------------------------------
    generate
        for (j = 1; j <= $clog2(N); j = j + 1) begin : PREFIX_STAGE
            for (i = 0; i < N; i = i + 1) begin : PREFIX_CELL
                if (i >= (1 << (j-1))) begin
                    assign G[j][i] = G[j-1][i] |
                                     (P[j-1][i] & G[j-1][i - (1 << (j-1))]);
                    assign P[j][i] = P[j-1][i] &
                                     P[j-1][i - (1 << (j-1))];
                end else begin
                    assign G[j][i] = G[j-1][i];
                    assign P[j][i] = P[j-1][i];
                end
            end
        end
    endgenerate

    // ------------------------------------------------------------------
    // Carry generation
    // ------------------------------------------------------------------
    wire [N:0] C;
    assign C[0] = Cin;

    generate
        for (i = 0; i < N; i = i + 1) begin
            assign C[i+1] = G[$clog2(N)][i] |
                            (P[$clog2(N)][i] & Cin);
        end
    endgenerate

    // ------------------------------------------------------------------
    // Sum generation
    // ------------------------------------------------------------------
    generate
        for (i = 0; i < N; i = i + 1) begin
            assign Sum[i] = P[0][i] ^ C[i];
        end
    endgenerate

    assign Cout = C[N];

endmodule

