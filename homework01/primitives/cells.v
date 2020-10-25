/////////////////////////////////////////////
//
// Models for generic gates
//
/////////////////////////////////////////////


module FA_GT ( CO, S, A, B, CI );
   output CO, S;
   input  A, B, CI;

   wire   n0;
   wire   n1;
   wire   n2;
   
   xor #(12) xor00( S, A, B, CI);

   and I0(n0,  A,  B);   
   and I1(n1,  B, CI);
   and I2(n2, CI,  A);
   
   nor #(10) I3(CO, n0, n1, n2);
   
endmodule

module INV_GT
  (
   Y, A
   );
   output Y;
   input  A;
   
   not #(4) I0(Y,A);
   
endmodule

module TRI_GT
  (
   Y, A, E, Eb
   );
  output Y;
  input E;
  input Eb;
  input A;
   
  notif0 #(6) (Y, A, Eb);
  notif1 #(6) (Y, A,  E);
 
endmodule

module NAND2_GT
  (
   Y, A, B
   );
   output Y;
   input  A;
   input  B;
   
   nand #(4) (Y, A, B);
endmodule

module NOR2_GT
  (
   Y, A, B
   );
   output Y;
   input  A;
   input  B;

   nor #(4) (Y, A, B);
endmodule

module AOI21_GT
  (
   Y, A0, A1, B0
   );

   output Y;
   input  A0;
   input  A1;
   input  B0;
   wire   outA ;

   and I0(outA, A0, A1);
   nor #(8) I1(Y, B0, outA);

endmodule

module AOI22_GT
  (
   Y, A0, A1, B0, B1
   );

   output Y;
   input  A0;
   input  A1;
   input  B0;
   input  B1;

   wire   outA ;
   wire   outB ;


   and I0(outA, A0, A1);
   and I1(outB, B0, B1);
   nor #(8) I2(Y, outA, outB);

endmodule

module OAI21_GT
  (
   Y, A0, A1, B0
   );

   output Y;
   input  A0;
   input  A1;
   input  B0;
   wire   outA ;

   or I0(outA, A0, A1);
   nand #(7) I1(Y, B0, outA);

endmodule

module OAI22_GT
  (
   Y, A0, A1, B0, B1
   );

   output Y;
   input  A0;
   input  A1;
   input  B0;
   input  B1;

   wire   outA ;
   wire   outB ;


   or I0(outA, A0, A1);
   or I1(outB, B0, B1);
   nand #(8) I2(Y, outA, outB);

endmodule

module XOR2_GT
  (
   Y, A, B
   );
   
  output Y;
  input  A;
  input  B;

  xor #(12) I5(Y, A, B);

endmodule
