module ej3a(w, clk, OUT);
	input w, clk;
	output OUT;
	
	wire conn1, conn2, conn3, conn4;
	wire D1, D2;
	wire Q1, Q2;
	
	ff ff1(D1, clk, 1'b0, Q1);
	ff ff2(D2, clk, 1'b0, Q2);

	assign conn4 = ((!Q2) && (!Q1) && w);
	assign conn2 = !(Q2 && w);
	assign conn3 = !(Q1 && w);

	assign conn1 = !(conn2 && conn3);

	assign D1 = conn4;
	assign D2 = conn1;

	assign OUT = Q1;

endmodule
