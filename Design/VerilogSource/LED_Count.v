`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Create Date:     March 2015 
// Design Name:     ReadbackCapture_KCU105
// Module Name:     LED_Cntr
// Project Name:    ReadbackCapture_KCU105
// Target Devices:  Kintex UltraScale   
// Tool versions:   2014.4
// Description:     Sample Counter Design with Clock control via BSCANE2 to demonstrate 
//                  the UltraScale Readback Capture sequence on the KCU105. 
//
//                  Module LED_Count: Top module contains the KCU105 board input and outputs.
//                  
//                  Module bscan: Creates the clock enable control.  When the JTAG USER4 BSCANE2
//                  primitive command is issued and the JTAG State Machine is in the RUNTEST state 
//                  with TMS low, the TCK will be enabled to clock the LED Count design.  The
//                  reference design will start the counter on the 8 GPIO LEDs on the KCU105 board.
//                  
//                  Module cntr: Sets up the LED count and reset pin condition.
// Dependencies:     
//
// Revision:        v1.0 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module LED_Count(   input RST, 
                    output[7:0] LED
                 );

    wire gclk;
    
    bscan bscan(
                  .GCLK (gclk)
                  );
    
    cntr cntr(
                  .clk(gclk),
                  .reset (RST),
                  .qout (LED)
              );

endmodule
