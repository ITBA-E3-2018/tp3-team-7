module ej2a(w, clk, out);
	input w,clk;
	output out;
	
	wire conn1, conn2, conn3, conn4, conn5, conn6, conn7, conn8;
	wire Q1, Q2, Q3;
	wire D1, D2, D3;

	assign conn1 = !(conn7 && conn5); //
	assign conn2 = !(conn5 && conn4);//
	assign conn3 = !( (!Q3) && (!conn6));//
	assign conn4 = !(Q1 && (!Q2) && w);//
	assign conn5 = !(Q2 && (!Q1) && conn8);//
	assign conn6 = !(Q2 && Q1 && w); //
	assign conn7 = !(w && (!Q3) && (!Q2) && (!Q1));// 
	assign conn8 = !w; //
	assign D3 = conn3;
	assign D2 = conn2;
	assign D1 = conn1;

	assign out = Q3;

	ff ff_my1(D1, clk, 1'b0, Q1);
	ff ff_my2(D2, clk, 1'b0, Q2);
	ff ff_my3(D3, clk, 1'b0, Q3);
endmodule
