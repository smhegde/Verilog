/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    03/12/2013                                                  //
// Module Name:    JKFF_Behavioral                                             //
// Description:    Behavioral Model of JK Flip Flop                            //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module JKFF_Behavioral(JK,clk,Q,Qbar);
  input[1:0] JK;
  input clk;
  output Q,Qbar;
  reg Q,Qbar;
  
  always@(posedge clk) 
  begin
    case(JK)
      2'd0 : Q = Q;
      2'd1 : Q = 0;
      2'd2 : Q = 1;
      2'd3 : Q = Qbar;
    endcase
    Qbar=~Q;
  end
endmodule





