module ej1a(clk, I, S, B1, B2);
	wire conn1, conn2, conn3, conn4;
	wire D1, clk1, D2, clk2, Q1, Q2;
	input I,S,clk;
	output B1,B2;

	assign conn1 = !S;
	assign conn2 = !(conn1 & !Q1);
	assign D1 = !(I & conn2);
	assign clk1 = clk;
	assign D2 = conn3;
	assign conn3 = !(conn4 & I);
	assign conn4 = !( Q1 & conn1 ); 
	assign clk2 = clk;
	assign B1 = Q1;
	assign B2 = Q2;

	ff ff1(D1, clk1, 1'b0, Q1);
	ff ff2(D2, clk2, 1'b0, Q2);

endmodule
