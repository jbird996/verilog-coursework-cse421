//Jason Hatfield - # 29163434
//CSE 241 HW8, problem 5.36, to submit .v, .vvp, _wv.vcd. screenshot, script


// Module for T-Flip Flop

module tff(q, t, clk, reset);

   output q;
   reg q;
   input t, clk, reset;

   always @ ( posedge clk, negedge reset )
	if (~reset) 
	   begin
		q <= 1'b0;
	   end
	
	else if (t)
	   begin
		q <= !q;
           end

endmodule

//End of TFF module

//Begin Circuit Module

module counter(a, b, clk, reset);

   output a, b;

   input clk, reset;

   wire ta, tb;

   assign ta = a | b;
   assign tb =  ~a | b;

   tff t1(a, ta, clk, reset);
   tff t2(b, tb, clk, reset);

endmodule

//End of Circuit module 
