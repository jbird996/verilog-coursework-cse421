//Jason Hatfield #29163434
//CSE241 HW 10 problem 5_50 test bench

module t_p5_50;

   reg x, clk, reset;
   wire y;

   p5_50 c1(y, x, clk, reset);

   initial #200 $finish;

   initial 
	begin
	  clk = 0;
	  repeat(40) #5 clk = !clk;
	end
  
   initial 
	begin
	   reset = 0;
	   x = 0;
	   #5 reset = 1;
	   #5 x = 1;
	   #180 x = 0;
	end

   initial 
	begin
	   $monitor("T = %g, reset = %b, y = %b, x = %b", $time, reset, y, x);
	   $dumpfile("5_50_wv.vcd");
	   $dumpvars;
	end
endmodule 
