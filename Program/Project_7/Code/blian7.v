`timescale 1ns / 1ps

module controlUnit(CtlSigs, MIPSInstr);
	input [31:0] MIPSInstr; // MIPS instruction word
	output [4:0] CtlSigs; 
	reg [4:0] CtlSigs; // MIPS datapath control signals
	// sub R op= 000000 funct = 100010
	// RegDst= 1; ALUSrc = 0; MemRead = 0; MemWrite = 0; MemtoReg = 0 
	// --> 10000
	//
	// addi I op= 001000
	// RegDst = 0; ALUSrc = 1; MemRead = 0; MemWrite = 0; MemtoReg = 0;
	// --> 01000
	//
	// lw I op = 100011
	// RegDst = 0 ; ALUSrc = 1; MemRead = 1; MemWrite = 0; MemtoReg = 1;
	// --> 01101
	//
	// I opcode 31-26, rs 25-21, rt 20-16, immediate 15-0
	// R opcode 31-26, rs 25-21, rt 20-16, rd 15-11, shamt 10-6, funct 5-0
	//

	always @(MIPSInstr or CtlSigs)
	begin
		case (MIPSInstr[31:26])
			6'b000000:   // sub
				case (MIPSInstr[5:0])
					6'b100010: CtlSigs <= 5'b10000;
				endcase	
			6'b001000: CtlSigs <= 5'b01000; // addi
			6'b100011: CtlSigs <= 5'b01101; // lw	
			default: CtlSigs <= 5'b00000;
		
		endcase
	end
	
endmodule


