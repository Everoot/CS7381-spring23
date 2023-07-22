// ex3.v
// T. Manikas  2022 Mar 11
// simple logic circuit with gate delays
// timescale of 1 ns

`timescale 1ns/10ps

// Description of circuit with delay

module circuit_with_delay (A,B,C,x,y);
	input A,B,C;
	output x,y;
	wire e;
	and #(15) g1(e,A,B);
	not #(5) g2(y,C);
	or #(10) g3(x,e,y);
endmodule

