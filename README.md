# zynq-ultrascale-readback-capture
## DESIGN FILE HIERARCHY

### Documentation
	**How to do readback capture on the Zynq UltraScale.pdf**
	
### TclScript 
	readback_capture_zcu.tcl - script provides the JTAG command sequence 
 	to set the UltraScale Capture bit on a ZU9EG FPGA device and then 
	to perform a readback into a ascii 32-bit formatted file for 
	identification of the user elements. The readback_capture_zcu.tcl is 
	first sourced in Vivado Design Tools TCl console and then the 
	following command is run (where <path_to_design> is the directory
	path where the files are unzipped, <total frame count> 
	is dependent on the FPGA (ie. ZU9EG has 71260 total frames), and 1 is 
	the overwrite option (1=yes and 0=no):
```
	rdbk_jtag <path_to_design> <total frame count> <overwrite> 
```

### DemoFiles
	Demo counter design implemented with 8 CLB registers is used with the 
	readback_capture.tcl for demonstrating the flow.  The design targets
	the ZCU102 demo.  Use the LED_Count.bit to program the FPGA and the
	LED_Count.ll file to determine the user state bit location of the 
	CLB register.    

	LED_Count.ll 
	Logic location file example. Contains user element bit map location
	and for use with the demonstration to identify CLB registers' user 
	state.

	LED_Count.bit
	Demonstration counter design bitstream  
 
	LED_Count.rbt
	Ascii format of demonstration counter design bitstream.

	LED_Count.rbd
	Readback verify file that does not contain the CLB Register user states.  
	


### Design 
	Verilog design files are provided for an example counter implemented
	with CLB registers. The verilog files and constraint file are provided 
	if the user wants to port the design to another board.  


	LED_Count.v 
	Contains the top level.The design loads the eight CLB registers
	with a value selected by the user. 

		cntr.v 
		Module contains the CLB Registers and count logic. 
	
		bscan.v
		Module contains the BSCANE2 primitive that enables the USER4
		JTAG instruction to stop the clock to freeze the design. 

	LED_Count.xdc
	Constraint file containing the KCU105 board LED and switch pinout.

	

## INSTALLATION AND OPERATING INSTRUCTIONS 


	1) Open the Hardware Manager in Vivado (tested on 2018.2)

	2) Power the ZCU102 evaluation board, set the mode pins to boot from JTAG (see the tutorial for more details)

	3) Connect the JTAG USB cable to the ZCU102 and system running Vivado

	4) Program the FPGA with the LED_Count.bit (Tcl example command set)
	
	5) In Vivado Tcl console change mode to -jtag_mode with commands (Tcl example command set)
```
close_hw_target [lindex [get_hw_targets -of [get_hw_servers localhost:3121]] 0]
open_hw_target -jtag_mode 1
```		
	6) In Vivado Tcl console select the CLB register values and stop the clock 
	   (Tcl example command set given.  The -tdi is the JTAG instruction where 923 
	    is the USER4 instruction and FFF is the BYPASS instruction.  The -tck # value 
	    will be what the user wants captured in the CLB registers.  -tck 174 decimal
	    will provide values on CLB Registers of hex equivalent 10101110)  
```
scan_ir_hw_jtag 12 -tdi 923
runtest_hw_jtag -tck 174
scan_ir_hw_jtag 12 -tdi fff
```
	7) In Vivado Tcl console source the readback_capture_zcu.tcl
```
source ./readback_capture_zcu.tcl
```
	8) In Vivado Tcl console run the readback capture command, .rdbk is the extension 
	   given for readback capture saved data. 

	   (Tcl command: rdbk_jtag <path to save readback capture data> <total frame count>)
```
rdbk_jtag ./LED_Count_zcu.rdbk 71260 1
```
	9) User post-processes the LED_Count.rdbk against the LED_Count.ll file to 
	    to identify user state of the CLB registers.  Refer to the tutorial for details.
 


## OTHER INFORMATION (OPTIONAL) 


## SUPPORT

This tutorial was adopted from the XAPP1230 application note from Xilin vendor (link: https://www.xilinx.com/support/documentation/application_notes/xapp1230-configuration-readback-capture.pdf).
Any issue/question, please send email to Khoa Pham at <khoa.pham@manchester.ac.uk>!
