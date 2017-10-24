// Jason Hatfield #29163434 
// CSE241 HW7 4.49 (express gate level verilog of figure p4.1 BCD to Excess-3 
// converter)

module fig4_49(f1, f2, a, b, c, d);

	output f1, f2;
	input a, b, c, d;
	wire a_not, b_not, d_not;
	wire t1, t2, t3, t4;

	not g1(a_not, a);
	not g2(b_not, b);
	not g3(d_not, d);

	and a1(t1, b_not, c);
	and a2(t2, a_not, b);

	or o1(t3, a, t1);
	or o2(f2, t2, d_not);

	xor x1(t4, t2, d);

	or o3(f1, t3, t4);

endmodule


