`timescale 1ns / 1ps

module ALU_control(ALUctl, ALUOp, funct);
	output reg [3:0] ALUctl; // ALU control signals
	input [1:0] ALUOp;  // ALUOp signals
	input [5:0] funct;   // func input value

	always @(ALUOp or funct)
	begin 
	   case (ALUOp)
		 2'b00: ALUctl <= 4'b0010; // lw ALUOp:00, funct xxxxxx, ALuctl:0010
		 2'b01: ALUctl <= 4'b0110; // beq ALUOp:01, funct xxxxxx, ALuctl:0110
		 2'b10:// ALUOp:10 
		 begin
		    case (funct)
			 6'b100000: ALUctl <= 4'b0010; //funct 100000, ALUctl:0010
			 6'b100010: ALUctl <= 4'b0110;
			 6'b100100: ALUctl <= 4'b0000;
			 6'b100101: ALUctl <= 4'b0001;
			 6'b101010: ALUctl <= 4'b0111;
			 6'b100111: ALUctl <= 4'b1100;
			 6'b100110: ALUctl <= 4'b1110;
		    endcase
	    	 end
	   endcase
	end
endmodule

