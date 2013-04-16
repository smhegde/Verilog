/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    04/15/2013                                                  //
// Module Name:    RSFF_Behavioral                                             //
// Description:    Behavioral Model of RS Flip Flop                            //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module RSFF(RS,clk,q,qbar);
  input [1:0] RS;
  output q,qbar;
  input clk;
  reg q,qbar;
  
  always @(posedge clk) begin
    case (RS)
      2'd0: q = q;
      2'd1: q = 0;
      2'd2: q = 1;
      2'd3: q = 1'bx;
    endcase
    qbar = ~q;
  end
endmodule
    


