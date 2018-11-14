module clock_test();
	wire clk;
	wire start;
	
	wire [5:0]ms;
	wire [5:0]sec;
	wire [5:0]min;
	wire [5:0]hs;

	integer i;
	
	chrono my_chrono(clk, start, rst, ms, sec, min, hs);

	initial begin
		start = 1;

		for (i = 0;i < 10000000;i++) begin
			#1 clock = 1;
			#1 clock = 0;
			
				
		end		
	end

endmodule
