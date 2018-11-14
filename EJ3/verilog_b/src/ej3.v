module ej3b(w, clk, OUT);
	input w, clk;
	output OUT;
	wire Q;

	ff ff1(w, clk, 1'b0, Q);

	assign OUT = (!Q) && w;
 
endmodule
