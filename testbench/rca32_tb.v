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

module tb_rca32;

    // Testbench signals
    reg  [31:0] A, B;
    reg  Cin;
    wire [31:0] Sum;
    wire Cout;

    // Instantiate the DUT (Device Under Test)
    rca32 dut (
        .a(A),
        .b(B),
        .cin(Cin),
        .s(Sum),
        .co(Cout)
    );

    initial begin
        $dumpfile("rca32_tb.vcd");   // For GTKWave or waveform viewer
        $dumpvars(0, tb_rca32);

        // Test Case 1: Simple addition
        A = 32'h00000001; B = 32'h00000001; Cin = 0;
        #10;
        $display("TC1: A=%h B=%h Cin=%b -> Sum=%h Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 2: Addition with carry-in
        A = 32'h0000000F; B = 32'h00000001; Cin = 1;
        #10;
        $display("TC2: A=%h B=%h Cin=%b -> Sum=%h Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 3: Large numbers
        A = 32'hFFFFFFFF; B = 32'h00000001; Cin = 0;
        #10;
        $display("TC3: A=%h B=%h Cin=%b -> Sum=%h Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 4: Random values
        A = 32'h12345678; B = 32'h87654321; Cin = 0;
        #10;
        $display("TC4: A=%h B=%h Cin=%b -> Sum=%h Cout=%b", A, B, Cin, Sum, Cout);

        // Test Case 5: Another random with carry-in
        A = 32'hAAAAAAAA; B = 32'h55555555; Cin = 1;
        #10;
        $display("TC5: A=%h B=%h Cin=%b -> Sum=%h Cout=%b", A, B, Cin, Sum, Cout);

        $finish;
    end

endmodule

