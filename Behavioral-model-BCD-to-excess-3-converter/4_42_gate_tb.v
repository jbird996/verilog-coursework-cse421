// Jason Hatfield #29163434
// CSE 241 HW7 Gate design test bench, fig4.4

module fig4_42_tb;

   reg[3:0] o;
   wire[3:0] i;

  fig4_42_gate c(i[3],i[2],i[1],i[0],o[3],o[2],o[1],o[0]);

  initial 
     begin
       o = 4'b0000;
       repeat(9) #10 o = o + 1'b1;
     end

  initial
     begin
         $monitor("ABCD= %b W = %b X = %b Y = %b Z = %b", o, i[3], i[2], i[1], i[0]);
	 $dumpfile("4_42_gate_wv.vcd");
	 $dumpvars;
     end

endmodule
 	
    
