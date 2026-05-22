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

module brent_kung_32 (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        Cin,
    output wire [31:0] Sum,
    output wire        Cout
);

    wire [31:0] P, G;
    wire [31:0] C;

    assign P = A ^ B;
    assign G = A & B;

    wire [31:0] G1, P1;
    wire [31:0] G2, P2;
    wire [31:0] G3, P3;
    wire [31:0] G4, P4;
    wire [31:0] G5, P5;

    wire [31:0] G6, P6;
    wire [31:0] G7, P7;
    wire [31:0] G8, P8;
    wire [31:0] G9, P9;

    genvar i;

    // -----------------------------
    // Up-sweep / reduction tree
    // -----------------------------

    // Distance 1: 1,3,5,...,31
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE1
            if ((i % 2) == 1) begin
                assign G1[i] = G[i] | (P[i] & G[i-1]);
                assign P1[i] = P[i] & P[i-1];
            end else begin
                assign G1[i] = G[i];
                assign P1[i] = P[i];
            end
        end
    endgenerate

    // Distance 2: 3,7,11,...,31
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE2
            if ((i % 4) == 3) begin
                assign G2[i] = G1[i] | (P1[i] & G1[i-2]);
                assign P2[i] = P1[i] & P1[i-2];
            end else begin
                assign G2[i] = G1[i];
                assign P2[i] = P1[i];
            end
        end
    endgenerate

    // Distance 4: 7,15,23,31
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE3
            if ((i % 8) == 7) begin
                assign G3[i] = G2[i] | (P2[i] & G2[i-4]);
                assign P3[i] = P2[i] & P2[i-4];
            end else begin
                assign G3[i] = G2[i];
                assign P3[i] = P2[i];
            end
        end
    endgenerate

    // Distance 8: 15,31
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE4
            if ((i % 16) == 15) begin
                assign G4[i] = G3[i] | (P3[i] & G3[i-8]);
                assign P4[i] = P3[i] & P3[i-8];
            end else begin
                assign G4[i] = G3[i];
                assign P4[i] = P3[i];
            end
        end
    endgenerate

    // Distance 16: 31
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE5
            if (i == 31) begin
                assign G5[i] = G4[i] | (P4[i] & G4[i-16]);
                assign P5[i] = P4[i] & P4[i-16];
            end else begin
                assign G5[i] = G4[i];
                assign P5[i] = P4[i];
            end
        end
    endgenerate

    // -----------------------------
    // Down-sweep / distribution tree
    // -----------------------------

    // Distance 8: 23
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE6
            if (i == 23) begin
                assign G6[i] = G5[i] | (P5[i] & G5[i-8]);
                assign P6[i] = P5[i] & P5[i-8];
            end else begin
                assign G6[i] = G5[i];
                assign P6[i] = P5[i];
            end
        end
    endgenerate

    // Distance 4: 11,19,27
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE7
            if (i == 11 || i == 19 || i == 27) begin
                assign G7[i] = G6[i] | (P6[i] & G6[i-4]);
                assign P7[i] = P6[i] & P6[i-4];
            end else begin
                assign G7[i] = G6[i];
                assign P7[i] = P6[i];
            end
        end
    endgenerate

    // Distance 2: 5,9,13,17,21,25,29
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE8
            if (i == 5 || i == 9 || i == 13 || i == 17 ||
                i == 21 || i == 25 || i == 29) begin
                assign G8[i] = G7[i] | (P7[i] & G7[i-2]);
                assign P8[i] = P7[i] & P7[i-2];
            end else begin
                assign G8[i] = G7[i];
                assign P8[i] = P7[i];
            end
        end
    endgenerate

    // Distance 1: 2,4,6,...,30
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE9
            if (i >= 2 && (i % 2) == 0) begin
                assign G9[i] = G8[i] | (P8[i] & G8[i-1]);
                assign P9[i] = P8[i] & P8[i-1];
            end else begin
                assign G9[i] = G8[i];
                assign P9[i] = P8[i];
            end
        end
    endgenerate

    assign C[0] = Cin;

    generate
        for (i = 1; i < 32; i = i + 1) begin : CARRY_GEN
            assign C[i] = G9[i-1] | (P9[i-1] & Cin);
        end
    endgenerate

    assign Sum  = P ^ C;
    assign Cout = G9[31] | (P9[31] & Cin);

endmodule

