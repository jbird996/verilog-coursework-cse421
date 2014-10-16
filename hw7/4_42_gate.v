// Jason Hatfield #29163434
// CSE 241 HW#7 Problem 4.42 (figure 4.4 Gate level Implementation)

module fig4_42_gate(w, x, y, z, a, b, c, d);

   output w, x, y, z;
   input a, b, c, d;

   wire t1, t2, t3, t4, t5, t2_not, b_not;

   not n1(b_not, b);
   not n2(z, d);
   not n3(t2_not, t2);

   and g1(t1, c, d);

   or g2(t2, c, d);

   or g3(y, t1, t2_not);

   and g4(t3, b, t2_not);

   and g5(t4, b_not, t2);

   or g6(x, t3, t4);

   and g7(t5, b, t2);

   or g8(w, a, t5);

endmodule

   
