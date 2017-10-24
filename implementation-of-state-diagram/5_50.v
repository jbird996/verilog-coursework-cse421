//Jason Hatfield #29163434
// CSE 241 HW10 problem 5.50 verilog implementation of state diagram

module p5_50(y_out, x, clk, reset);

   input x, clk, reset;
   output y_out;
   reg [1:0] state;
   parameter s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;

   always @(posedge clk, negedge reset)

	if(~reset) state <= s0;
	else   case(state)

		s0: if(x) state <= s1;
	 	s1: if(x) state <= s2;
		s2: if(x) state <= s3;
		s3: if(x) state <= s0;
	      
    	       endcase

   assign y_out = (state == s2) || (state == s3);
 

endmodule 	
	   
