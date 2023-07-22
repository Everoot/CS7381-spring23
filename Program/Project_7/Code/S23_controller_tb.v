// ============================================================
// S23_controller_tb.v
// T. Manikas	2022 Dec 29
//
// testbench for MIPS control unit
// ============================================================

`timescale 1ns / 1ps

module test_controlUnit;

   parameter finishtime = 100;

   reg [31:0] MIPSInstr;      // MIPS instruction word
   wire [4:0] CtlSigs;        // MIPS datapath control signals

   controlUnit DUT(CtlSigs, MIPSInstr);

   initial
     begin
	MIPSInstr = 0;
     end
   
   
   initial
     begin

      #2 MIPSInstr = 32'b00111100000000010001000000000001; // 001111: other MIPS instructions 
      #2 MIPSInstr = 32'b10001100001010000000000000000000; // 100011: lw 0,1,1,0,1
      #2 MIPSInstr = 32'b10001100001010010000000000000000; // 100011: lw 0,1,1,0,1
      #2 MIPSInstr = 32'b00111100000000010001000000000001; // 001111: other MIPS instructions 0
      #2 MIPSInstr = 32'b00000001001011000110100000100000; // 000000: funct = 100000 other 0
      #2 MIPSInstr = 32'b00100000000000010000000000000001; // 001000: addi 0, 1, 0, 0, 0
      #2 MIPSInstr = 32'b00000001010000010101000000100010; // 000000: funct = 100010 sub 1,0,0,0,0

      #finishtime $finish;

   end

   initial $display("\t\t\topcode RegDst ALUSrc MemRead MemWrite MemtoReg");
   
   
   initial $monitor($time, "\t%b\t%b\t%b\t%b\t%b\t%b",MIPSInstr[31:26], CtlSigs[4], CtlSigs[3], CtlSigs[2], CtlSigs[1], CtlSigs[0]);



endmodule // test_controlUnit

	
   
