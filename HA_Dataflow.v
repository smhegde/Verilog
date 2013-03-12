/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    03/12/2013                                                  //
// Module Name:    HA_Dataflow                                                 //
// Description:    Behavioural Model of Half Adder                             //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module HA_Dataflow(a,b,sum,cout);
  input a,b;
  output sum,cout;
  
  assign #5 sum = a^b;
  assign #5 cout = a & b;
endmodule


