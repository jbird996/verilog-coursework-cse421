//Jason Hatfield - #29163434
//HW8 Test bench for 00-01-10-counter circuit

module counter_tb;

   reg clk, reset;

   wire ta, tb;

   counter c1(ta, tb, clk, reset);

   initial #200 $finish;

   initial
	
	begin
	
	   reset = 0;
	   clk = 0;

	   #5 reset = 1;

	   repeat(16)
		
		#5 clk = ~clk;

   	end

   initial 
   	
	begin

	   $monitor("time = %g clk = %b reset = %b a_out = %b b_out = %b", $time, clk, reset, ta, tb);
	   $dumpfile("5_36_wv.vcd");
	   $dumpvars;

   	end

endmodule     	 
