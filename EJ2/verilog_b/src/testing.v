`timescale 1ns / 1ps

module testing;	
	reg w,  clk;
	output out;
		
	ej2b ej2(w, clk, out);

	initial begin
		$dumpfile("output.vcd");
		$dumpvars(0,testing);

		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;
		
		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;		
			
		#1 w = 0;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 0;
		#1 clk = 0;
		#1 clk = 1;
		
		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;
		
		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 0;
		#1 clk = 0;
		#1 clk = 1;

		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;
			
		#1 w = 1;
		#1 clk = 0;
		#1 clk = 1;
		
		#1 w = 0;
		#1 clk = 0;
		#1 clk = 1;

		#3
		$finish;
	end

endmodule
