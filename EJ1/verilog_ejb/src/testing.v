`timescale 1ns / 1ps

module testing;
	reg I,S, clk;
	wire B1 , B2;
		
	
		
	ej1b ej1(clk, I, S , B1, B2);

	initial begin
		$dumpfile("output.vcd");
		$dumpvars(0,testing);

		#0 I = 1;
		#0 S = 0;
		#1 clk = 0;
		#1 clk = 1;
		
		#0 I = 1;
		#0 S = 0;
		#1 clk = 0;
		#1 clk = 1;		
		
		#0 S = 0;
		#0 I = 1;
		#1 clk = 0;
		#1 clk = 1;

		#0 S = 1;
		#0 I = 1;
		#1 clk = 0;
		#1 clk = 1;

		#0 S = 0;
		#0 I = 1;
		#1 clk = 0;
		#1 clk = 1;

		#0 S = 0;
		#0 I = 0;
		#1 clk = 0;
		#1 clk = 1;
		
		#3
		$finish;
	end

endmodule
