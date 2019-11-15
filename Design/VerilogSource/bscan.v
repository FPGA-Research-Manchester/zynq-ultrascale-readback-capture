`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Create Date:     March 2015 
// Design Name:     ReadbackCapture_KCU105
// Module Name:     bscan
// Project Name:    ReadbackCapture_KCU105
// Target Devices:  Kintex UltraScale  
// Tool versions:   2014.4
// Description:     Sample Counter Design with Clock control via BSCANE2 to demonstrate 
//                  the UltraScale Readback Capture sequence on the KCU105. 
//
//                  Module bscan: Creates the clock enable control.  When the JTAG USER4 BSCANE2
//                  primitive command is issued and the JTAG State Machine is in the RUNTEST state 
//                  with TMS low, the TCK will be enabled to clock the LED Count design.  The
//                  reference design will start the counter on the 8 GPIO LEDs on the KCU105 board.
//
// Dependencies:     
//
// Revision:        v1.0 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bscan(               
            output GCLK 
            );  

wire sel, runtest, tck, tms, GCLK; 

   BSCANE2 #(
      .JTAG_CHAIN(4)  // Value for USER command.
             )
   BSCANE2_ZCU102 (
      .CAPTURE(), // 1-bit output: CAPTURE output from TAP controller.
      .DRCK(),       // 1-bit output: Gated TCK output. When SEL is asserted, DRCK toggles when CAPTURE or
                         // SHIFT are asserted.

      .RESET(),     // 1-bit output: Reset output for TAP controller.
      .RUNTEST(runtest), // 1-bit output: Output asserted when TAP controller is in Run Test/Idle state.
      .SEL(sel),         // 1-bit output: USER instruction active output.
      .SHIFT(),     // 1-bit output: SHIFT output from TAP controller.
      .TCK(tck),         // 1-bit output: Test Clock output. Fabric connection to TAP Clock pin.
      .TDI(),        // 1-bit output: Test Data Input (TDI) output from TAP controller.
      .TMS(tms),         // 1-bit output: Test Mode Select output. Fabric connection to TAP.
      .UPDATE(UPDATE),   // 1-bit output: UPDATE output from TAP controller
      .TDO(TDO)          // 1-bit input: Test Data Output (TDO) input for USER function.
   );

// End of BSCANE2_inst instantiation

     BUFGCE bufgce1(
                   .I(tck),
                   .CE (sel && runtest && !tms),
                   .O (GCLK)
                  );
// End of BUFGCE instantiattion

endmodule
