// =================================================
// S23_MIPS_ALU_basic_tb.v
// T. Manikas 	2022 Dec 27
//
// testbench for S23_MIPS_ALU_basic
// =================================================

`timescale 1ns / 1ps

module test_alu;

	parameter finishtime = 100;

	   reg [3:0] ALUctl;
	   reg [31:0] A, B;
	   wire [31:0] ALUOut;
	   wire Zero;
	   MIPSALU u1(ALUctl, A, B, ALUOut, Zero);

	   initial
	   begin
	      ALUctl = 4'h1;	    // start with OR, A = 0, B = 0
	      A = 32'h0;
	      B = 32'h0;
	   end

	   initial
	   begin
	      #2 A = 32'hC; B = 32'h5;		// C or 5 = D
	      #2 A = 32'hF; B = 32'h6;		// F or 6 = F
	      #2 ALUctl = 4'h7;			// F < 6? should be false
	      #2 A = 32'h1;			// 1 < 6? should be true

	    #finishtime $finish;

	   end

	   initial $monitor($time, " Zero=%b ALUctl=%d A=%h B=%h ALUOut=%h",
	   		   Zero, ALUctl, A, B, ALUOut);
endmodule
