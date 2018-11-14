module ej1b(clk, I, S, B1, B2);
	wire conn1, conn2, conn3, conn4, conn5, conn6, conn7, conn8;
	input S,I,clk;
	wire Q1;

	output B1, B2;

	assign D = !(conn1 & conn2 & conn3);
	assign conn1 = !(S & Q1);
	assign conn2 = !(conn7 & !Q1);
	assign conn3 = !(conn8 & I);
	assign conn4 = !(conn8 & conn7);
	assign conn5 = (!Q1 & conn8);
	assign conn6 = !(conn8 & Q1);
	assign conn7 = !I;
	assign conn8 = !S;
	assign B1 = !(conn4 & conn5);
	assign B2 = !(conn4 & conn6);

	ff my_ff(conn1, !clk, 1'b0, Q1);

endmodule
