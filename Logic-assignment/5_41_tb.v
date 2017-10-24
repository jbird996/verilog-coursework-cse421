// Jason Hatfield - #29163434
//  HW9 5.41 test bench

module circuit_5_41_tb;

   wire y_out;

   reg x, clk, reset;

   circuit_5_41 c1(y_out, x, clk, reset);

   initial #200 $finish;

   initial

	begin
	   clk = 0;

	   repeat(40) #5 clk = ~clk;
	end

   initial

	begin
	   // Initialize x and reset

	   x = 0;
	   
	   #2 reset = 1;
	   #3 reset = 0;
	   #4 reset = 1;

	   // Initialize counting	
	   #10 x = 1;
	   // Reverse Count
	   #100 x = 0;
	   // Reverse
	   #150 x = 1;
	end

   initial
	begin
	   $monitor("time = %g, reset = %b, x = %b, y_out = %b", $time, reset, x, y_out);
	   $dumpfile("5_41_wv.vcd");	
	   $dumpvars;
	end
endmodule 	   	
