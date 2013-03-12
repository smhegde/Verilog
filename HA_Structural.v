/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    03/12/2013                                                  //
// Module Name:    HA_Structural                                               //
// Description:    Behavioural Model of Half Adder                             //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module HA_Structural(a,b,sum,cout);
  input a,b;
  output sum,cout;
  
  xor u1(sum, a, b);
  and u2(cout, a, b);
endmodule


