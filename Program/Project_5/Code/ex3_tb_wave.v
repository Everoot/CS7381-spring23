// ex3_tb_wave.v
// T. Manikas  2022 Mar 11
// testbench for ex3.v module
// timescale of 1 ns
// display waveform for output using SimVision

`timescale 1ns/10ps
`define DELAY 50

// Stimulus for simple circuit
module stimcrct;

   parameter finishtime = 5;
   
   reg A, B, C;
   wire x, y;
   circuit_with_delay cwd (A, B, C, x, y);

   initial begin
      #0 A=1'b0; B=1'b0; C=1'b0;
      #`DELAY
	C=1'b1;
      #`DELAY
	B=1'b1;
      #`DELAY
	A=1'b1;
      $stop;
      
   end
   

   initial begin
      $monitor($time," A=%b B=%b C=%b x=%b y=%b",A,B,C,x,y);
   end
   

   
endmodule



