/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    04/16/2013                                                  //
// Module Name:    DFF_Behavioral                                              //
// Description:    Behavioral Model of D Flip Flop                             //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module DFF(D,rst,clk,q);
  input D,rst,clk;
  output q;
  reg q;
  
  always @(posedge clk) begin
    if(rst==1) begin
      q<=0;
    end
    else begin
      q<=D;
    end
  end
endmodule
    





