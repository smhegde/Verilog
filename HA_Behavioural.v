/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    03/11/2013                                                  //
// Module Name:    HA_Behavioural                                              //
// Description:    Behavioural Model of Half Adder                             //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module HA_Behavioural(a,b,sum,cout);
  input a,b;
  output sum,cout;
  reg sum, cout;
  
  always @(a,b) begin
    #5 sum = a^b;
    #5 cout = a & b;
  end
endmodule
