module ej2b(w, clk, out);
	input w,clk;
	output out;
	
	wire conn1, conn2, conn3, conn4, conn5, conn6, conn7, conn8, conn9;
	wire Q1, Q2;
	wire D1, D2;

	assign conn1 = !conn6;
	assign conn2 = !(conn6 && conn7 && conn3);
	assign conn3 = !(Q2 && (!Q1) && conn9);
	assign conn4 = !(conn8 && conn5);
	assign conn5 = !(Q2 && (!Q1) && conn9);
	assign conn6 = !(Q2 && Q1 && w);
	assign conn7 = !((!Q2) && (!Q1) && w);
	assign conn8 = !(Q1 && w);	
	assign conn9 = !w;
	assign D2 = conn4;
	assign D1 = conn2;

	assign out = conn1;

	ff ff_my1(D1, clk, 1'b0, Q1);
	ff ff_my2(D2, clk, 1'b0, Q2);

endmodule
