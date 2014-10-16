// Jason Hatfield - 29163434
// CSE 241, HW#7 4_49_tb.v

module fig4_49_tb;

  reg[3:0] d;
  wire out1, out2;

fig4_49 c1(out1, out2, d[3], d[2], d[1], d[0]);

  initial 
     begin
	d = 4'b0000;
	repeat(9) #10 d = d + 1'b1;
     end

  initial
     begin

     $monitor("ABCD = %b F1 = %b F2 = %b", d, out1, out2);
     $dumpfile("4_49_wv.vcd");
     $dumpvars;
     
     end	
	
endmodule  	
