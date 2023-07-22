// ============================================================
// S23_ALU_control_tb.v
// T. Manikas	2022 Dec 29
//
// testbench for MIPS ALU Control Unit
// ============================================================

`timescale 1ns / 1ps

module test_ALU_CTL;

   parameter finishtime = 100;

   reg [1:0] ALUOp;
   reg [5:0] funct;
   wire [3:0] ALUctl;

   ALU_control DUT(ALUctl, ALUOp, funct);

   initial
     begin
	 ALUOp = 0;  funct = 0;
     end
   
   
   initial
     begin
	 #2 ALUOp = 2'b00;       // lw
	 #2 ALUOp = 2'b01;      // beq
	 #2 ALUOp = 2'b10;      // R-type
	 funct = 6'b100000;       // add
	 #2 funct = 6'b100010;       // sub
	 #2 funct = 6'b100100;       // and
	 #2 funct = 6'b100101;       // or
	 #2 funct = 6'b101010;       // slt
	 #2 funct = 6'b100111;		// nor
	 #2 funct = 6'b100110;		// xor

       #finishtime $finish;

     end

   initial $monitor($time, " ALUOp=%b funct=%b ALUctl=%b",
		    ALUOp, funct, ALUctl);

endmodule // test_ALU_CTL

	
   
