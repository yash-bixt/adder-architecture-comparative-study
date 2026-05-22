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

module csla32_nobec_tb;

    // Inputs
    reg  [31:0] A;
    reg  [31:0] B;
    reg         Cin;

    // Outputs
    wire [31:0] Sum;
    wire        Cout;

    // Expected result
    reg  [32:0] expected;

    integer i;

    // DUT instantiation
    csla32_nobec_flat dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin

        $display("Starting CSLA32 No-BEC Test...");

        // Edge cases first
        A = 0; B = 0; Cin = 0; #5;
        expected = A + B + Cin;
        check_result();

        A = 32'hFFFFFFFF; B = 0; Cin = 0; #5;
        expected = A + B + Cin;
        check_result();

        A = 32'hFFFFFFFF; B = 32'h1; Cin = 0; #5;
        expected = A + B + Cin;
        check_result();

        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 1; #5;
        expected = A + B + Cin;
        check_result();

        // Random testing
        for (i = 0; i < 1000; i = i + 1) begin
            A   = $random;
            B   = $random;
            Cin = $random;
            #5;

            expected = A + B + Cin;
            check_result();
        end

        $display("All tests completed.");
        $finish;
    end


    // --------------------------------------------
    // Task to compare DUT and expected
    // --------------------------------------------
    task check_result;
        begin
            if ({Cout, Sum} !== expected) begin
                $display("ERROR at time %0t", $time);
                $display("A=%h B=%h Cin=%b", A, B, Cin);
                $display("Expected = %h", expected);
                $display("DUT      = %b%b", Cout, Sum);
                $stop;
            end
        end
    endtask

endmodule

`default_nettype wire
