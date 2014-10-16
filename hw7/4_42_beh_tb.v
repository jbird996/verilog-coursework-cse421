// Jason Hatfield #29163434
// CSE241 HW7 fig 4.4 BCD to excess-3 converter behavioral test bench

module fig4_42_beh_tb;

reg [3:0] in;
wire [3:0] out;

fig4_42_beh c(out,in);

initial
  
   begin

      in = 4'b0000;

      repeat(9) #10 in = in + 1'b1;

   end

initial

   begin

   $monitor("ABCD = %b w = %b x = %b y = %b z = %b", in, out[3], out[2], out[1], out[0]);

   $dumpfile("4_42_beh_wv.vcd");
   $dumpvars;

   end

endmodule    
