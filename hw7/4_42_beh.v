// Jason Hatfield #29163434
// HW7 figure 4.4 behavioral model BCD to excess 3 converter

module fig4_42_beh(out, in);

   output [3:0]out; 
   input [3:0]in;
   reg [3:0]out;

   always @(in)

      out = in + 3; 
	  
endmodule
	  
     
