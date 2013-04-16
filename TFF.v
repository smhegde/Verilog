/////////////////////////////////////////////////////////////////////////////////
//                                                                             //
// Engineer: Subramanya Hegde                                                  //
// Create Date:    04/16/2013                                                  //
// Module Name:    TFF_Behavioral                                              //
// Description:    Behavioral Model of T Flip Flop                             //
//                                                                             //
/////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 10ps
module TFF(T,rst,clk,q);
  input T,rst,clk;
  output q;
  reg q;
  
  always @(posedge clk) begin
    if(rst==1) begin
      q<=0;
    end
    else begin
      q<=~T;
    end
  end
endmodule
    






