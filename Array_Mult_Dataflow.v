/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    03/12/2013                                                  //
// Module Name:    Array_Mult_Dataflow                                         //
// Description:    Dataflow Model of 2X2 Combinational Array Multiplier        //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module Array_Mult_Dataflow(a,b,out);
  input [1:0] a,b;
  output [3:0] out;
  
  assign out[0] = a[0] & b[0];
  assign out[1] = (a[0] & b[1]) ^ (a[1] & b[0]);
  assign out[2] = (a[1] & b[1]) ^ ((a[0] & b[1]) & (a[1] & b[0]));
  assign out[3] = (a[1] & b[1]) & ((a[0] & b[1]) & (a[1] & b[0]));
endmodule



