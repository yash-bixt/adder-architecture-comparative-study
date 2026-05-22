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

module han_carlson_32 (
    input  wire [31:0] A,
    input  wire [31:0] B,
    input  wire        Cin,
    output wire [31:0] Sum,
    output wire        Cout
);

    //------------------------------------------
    // Propagate and Generate
    //------------------------------------------
    wire [31:0] P, G;

    assign P = A ^ B;
    assign G = A & B;

    //------------------------------------------
    // Prefix Tree Signals
    //------------------------------------------
    wire [31:0] G1, P1;
    wire [31:0] G2, P2;
    wire [31:0] G3, P3;
    wire [31:0] G4, P4;
    wire [31:0] G5, P5;

    //------------------------------------------
    // Carry Signals
    //------------------------------------------
    wire [32:0] C;

    assign C[0] = Cin;

    genvar i;

    //------------------------------------------
    // Stage 1 (Distance = 1)
    //------------------------------------------
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE1
            if (i == 0) begin
                assign G1[i] = G[i];
                assign P1[i] = P[i];
            end
            else if (i % 2 == 1) begin
                assign G1[i] = G[i] | (P[i] & G[i-1]);
                assign P1[i] = P[i] & P[i-1];
            end
            else begin
                assign G1[i] = G[i];
                assign P1[i] = P[i];
            end
        end
    endgenerate

    //------------------------------------------
    // Stage 2 (Distance = 2)
    //------------------------------------------
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE2
            if (i >= 3 && (i % 2 == 1)) begin
                assign G2[i] = G1[i] | (P1[i] & G1[i-2]);
                assign P2[i] = P1[i] & P1[i-2];
            end
            else begin
                assign G2[i] = G1[i];
                assign P2[i] = P1[i];
            end
        end
    endgenerate

    //------------------------------------------
    // Stage 3 (Distance = 4)
    //------------------------------------------
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE3
            if (i >= 7 && (i % 2 == 1)) begin
                assign G3[i] = G2[i] | (P2[i] & G2[i-4]);
                assign P3[i] = P2[i] & P2[i-4];
            end
            else begin
                assign G3[i] = G2[i];
                assign P3[i] = P2[i];
            end
        end
    endgenerate

    //------------------------------------------
    // Stage 4 (Distance = 8)
    //------------------------------------------
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE4
            if (i >= 15 && (i % 2 == 1)) begin
                assign G4[i] = G3[i] | (P3[i] & G3[i-8]);
                assign P4[i] = P3[i] & P3[i-8];
            end
            else begin
                assign G4[i] = G3[i];
                assign P4[i] = P3[i];
            end
        end
    endgenerate

    //------------------------------------------
    // Stage 5 (Distance = 16)
    //------------------------------------------
    generate
        for (i = 0; i < 32; i = i + 1) begin : STAGE5
            if (i >= 31 && (i % 2 == 1)) begin
                assign G5[i] = G4[i] | (P4[i] & G4[i-16]);
                assign P5[i] = P4[i] & P4[i-16];
            end
            else begin
                assign G5[i] = G4[i];
                assign P5[i] = P4[i];
            end
        end
    endgenerate

    //------------------------------------------
    // Carry Generation
    //------------------------------------------
    generate
        for (i = 1; i < 32; i = i + 1) begin : CARRY_GEN
            assign C[i] = G5[i-1] | (P5[i-1] & Cin);
        end
    endgenerate

    assign C[32] = G5[31] | (P5[31] & Cin);

    //------------------------------------------
    // Sum Generation
    //------------------------------------------
    assign Sum  = P ^ C[31:0];
    assign Cout = C[32];

endmodule
