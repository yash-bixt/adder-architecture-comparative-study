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

module brent_kung_32_tb;

    reg  [31:0] A, B;
    reg         Cin;
    wire [31:0] Sum;
    wire        Cout;

    reg  [32:0] expected;
    integer i;

    // DUT
    brent_kung_32 dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("Starting Brent-Kung 32 GLS Test...");

        // -------------------------
        // Edge Cases
        // -------------------------
        test_vector(32'h00000000, 32'h00000000, 1'b0);
        test_vector(32'hFFFFFFFF, 32'h00000000, 1'b0);
        test_vector(32'hFFFFFFFF, 32'h00000001, 1'b0);
        test_vector(32'hAAAAAAAA, 32'h55555555, 1'b1);
        test_vector(32'h80000000, 32'h80000000, 1'b0);
        test_vector(32'h7FFFFFFF, 32'h00000001, 1'b0);

        // -------------------------
        // Random Tests
        // -------------------------
        for (i = 0; i < 3000; i = i + 1) begin
            test_vector($random, $random, $random);
        end

        $display("Brent-Kung 32 PASSED.");
        $finish;
    end


    // ------------------------------------
    // Test Task
    // ------------------------------------
    task test_vector;
        input [31:0] a_in;
        input [31:0] b_in;
        input        cin_in;
        begin
            A   = a_in;
            B   = b_in;
            Cin = cin_in;
            #5;  // Important for GLS delay

            expected = A + B + Cin;

            if ({Cout, Sum} !== expected) begin
                $display("ERROR at time %0t", $time);
                $display("A=%h B=%h Cin=%b", A, B, Cin);
                $display("Expected=%h", expected);
                $display("DUT     =%b%b", Cout, Sum);
                $stop;
            end
        end
    endtask

endmodule
