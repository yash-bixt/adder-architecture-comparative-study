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

module csla32_bec_tb;

    reg  [31:0] A, B;
    reg Cin;
    wire [31:0] Sum;
    wire Cout;

    integer i;

    // DUT instantiation
    csla32_bec dut (
        .A(A), .B(B), .Cin(Cin),
        .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $dumpfile("csla32_bec_tb.vcd");
        $dumpvars(0, csla32_bec_tb);

        // If using Verdi FSDB:
        // $fsdbDumpfile("csla32_bec.fsdb");
        // $fsdbDumpvars(0, csla32_bec_tb);

        $display("Starting CS_BEC 32-bit simulation...");

        for (i = 0; i < 100; i = i + 1) begin
            A   = $random;
            B   = $random;
            Cin = $random;

            #10; // wait for output to settle

            if ({Cout, Sum} !== (A + B + Cin)) begin
                $display("ERROR at %0d : A=%h B=%h Cin=%b", i, A, B, Cin);
                $display(" DUT Output   = %h", {Cout, Sum});
                $display(" Expected Out = %h", A + B + Cin);
            end
        end

        $display("Simulation completed.");
        $finish;
    end

endmodule

