// Jason Hatfield - #29163434
// HW9 - Problem 5.41 

module circuit_5_41(y_out, x, clk, reset);

   output reg y_out;

   input x, clk, reset;

   reg [2:0] state, nextstate;

   parameter s0 = 3'b000, s1 = 3'b001, s2 = 3'b010, s3 = 3'b011, s4 = 3'b100;

   always @(posedge clk, negedge reset)
	
	if(reset == 0)
	   state <= s0;

	else 
	   state <= nextstate;

   always @(state, x)

	begin

	   y_out = 0;
	   nextstate = s0;

	   case(state)

		s0:  if(x)

			begin

			   nextstate = s4;
			   y_out = 1;

			end

		     else

			begin

			   nextstate = s3;
			   y_out = 0;

			end

		s1:  if(x)

			begin

			   nextstate = s4;
			   y_out = 1;

			end

		     else

			begin

			   nextstate = s1;
			   y_out = 0;

			end

		s2:  if(x)

			begin

			   nextstate = s0;
			   y_out = 1;

			end

		     else

			begin

			   nextstate = s2;
			   y_out = 0;

			end

		s3:  if(x)

			begin

			   nextstate = s2;
			   y_out = 1;

			end

		     else

			begin

			   nextstate = s1;
			   y_out = 0;

			end

		s4:  if(x)

			begin

			   nextstate = s3;
			   y_out = 0;

			end

		     else

			begin

			   nextstate = s2;
			   y_out = 0;

			end

		default: nextstate = 3'bxxx;

	   endcase
	end
endmodule
