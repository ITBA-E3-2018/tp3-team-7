
module chrono(clk , start, rst,  ms, sec, min, hs);
	input clk;	
	input start;
	reg need_start = 1;
	reg counter[86400000:0];
	output [5:0]ms;
	output [5:0]sec;
	output [5:0]min;
	output [5:0]hs;

	always (@posedge clk) begin
		if (not need_start) begin
			counter = counter + 1;
		end
	end
	always (@posedge rst) begin
		counter = 0;
		need_start = 1;
	end
	always (@posedge start) begin
		if (need_start) begin
			need_start = 0;
		end
	end
	assign ms = counter % 1000;
	assign sec = counter / 1000 % 60;
	assign min = counter / 1000 / 60 % 60;
	assign hs = counter / 1000 / 60 / 60 % 60;

endmodule
