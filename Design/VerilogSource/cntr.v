`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Create Date:     March 2015 
// Design Name:     ReadbackCapture
// Module Name:     cntr 
// Project Name:    KCU105_ReadbackCapture
// Target Devices:  Kintex UltraScale and Virtex UltraScale 
// Tool versions:   2014.4
// Description:     Sample Counter Design with Clock control via BSCANE2 to demonstrate 
//                  the UltraScale Readback Capture sequence on the KCU105. 
//
//                  Module cntr: Sets up the LED count and reset pin conditions.  
//
// Dependencies:    
//
// Revision:        v1.0 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cntr(
	          input clk, reset, 
	          output reg [7:0] qout 
             );

//       reg  [7:0] qout;
        
        always @ (posedge clk)
              begin
                if (!reset) 
                    qout <= 8'b0;
                else 
                    qout <= qout + 1;
               end

endmodule

