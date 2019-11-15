#XCZU9EG - ZCU102 Pinout

#Configuration Voltage and CFGBVS reference design setup for ZCU102 demo.  
#These values should be set appropriately for the board being used.  
#See UG570 for CFGBVS details.

create_clock -period 25.000 -name gclk [get_nets gclk]
#set_property CONFIG_VOLTAGE 1.8 [current_design]
#set_property CFGBVS GND [current_design]

#Counter 8-bit input and outputs - RST signal and LED indicators
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[0]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[1]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[2]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[3]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[4]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[5]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[6]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {LED[7]}]
#set_property IOSTANDARD LVCMOS12 [get_ports {RST}]

#set_property PACKAGE_PIN AP8 [get_ports {LED[0]}]
#set_property PACKAGE_PIN H23 [get_ports {LED[1]}]
#set_property PACKAGE_PIN P20 [get_ports {LED[2]}]
#set_property PACKAGE_PIN P21 [get_ports {LED[3]}]
#set_property PACKAGE_PIN N22 [get_ports {LED[4]}]
#set_property PACKAGE_PIN M22 [get_ports {LED[5]}]
#set_property PACKAGE_PIN R23 [get_ports {LED[6]}]
#set_property PACKAGE_PIN P23 [get_ports {LED[7]}]
#set_property PACKAGE_PIN AN16 [get_ports {RST}]

set_property PACKAGE_PIN AG14     [get_ports "LED[0]"] ;# Bank  44 VCCO - VCC3V3   - IO_L10P_AD2P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[0]"] ;# Bank  44 VCCO - VCC3V3   - IO_L10P_AD2P_44
set_property PACKAGE_PIN AF13     [get_ports "LED[1]"] ;# Bank  44 VCCO - VCC3V3   - IO_L9N_AD3N_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[1]"] ;# Bank  44 VCCO - VCC3V3   - IO_L9N_AD3N_44
set_property PACKAGE_PIN AE13     [get_ports "LED[2]"] ;# Bank  44 VCCO - VCC3V3   - IO_L9P_AD3P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[2]"] ;# Bank  44 VCCO - VCC3V3   - IO_L9P_AD3P_44
set_property PACKAGE_PIN AJ14     [get_ports "LED[3]"] ;# Bank  44 VCCO - VCC3V3   - IO_L8N_HDGC_AD4N_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[3]"] ;# Bank  44 VCCO - VCC3V3   - IO_L8N_HDGC_AD4N_44
set_property PACKAGE_PIN AJ15     [get_ports "LED[4]"] ;# Bank  44 VCCO - VCC3V3   - IO_L8P_HDGC_AD4P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[4]"] ;# Bank  44 VCCO - VCC3V3   - IO_L8P_HDGC_AD4P_44
set_property PACKAGE_PIN AH13     [get_ports "LED[5]"] ;# Bank  44 VCCO - VCC3V3   - IO_L7N_HDGC_AD5N_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[5]"] ;# Bank  44 VCCO - VCC3V3   - IO_L7N_HDGC_AD5N_44
set_property PACKAGE_PIN AH14     [get_ports "LED[6]"] ;# Bank  44 VCCO - VCC3V3   - IO_L7P_HDGC_AD5P_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[6]"] ;# Bank  44 VCCO - VCC3V3   - IO_L7P_HDGC_AD5P_44
set_property PACKAGE_PIN AL12     [get_ports "LED[7]"] ;# Bank  44 VCCO - VCC3V3   - IO_L6N_HDGC_AD6N_44
set_property IOSTANDARD  LVCMOS33 [get_ports "LED[7]"] ;# Bank  44 VCCO - VCC3V3   - IO_L6N_HDGC_AD6N_44

#set_property PACKAGE_PIN AG13     [get_ports "RST"] ;# Bank  44 VCCO - VCC3V3   - IO_L10N_AD2N_44 # AG13 GPIO_SW_C LVCMOS33 SW15.3
#set_property IOSTANDARD  LVCMOS33 [get_ports "RST"] ;# Bank  44 VCCO - VCC3V3   - IO_L10N_AD2N_44 # AG13 GPIO_SW_C LVCMOS33 SW15.3

set_property PACKAGE_PIN AK13     [get_ports "RST"] ;# Bank  44 VCCO - VCC3V3   - IO_L6P_HDGC_AD6P_44 # AK13 GPIO_DIP_SW7 LVCMOS33
set_property IOSTANDARD  LVCMOS33 [get_ports "RST"] ;# Bank  44 VCCO - VCC3V3   - IO_L6P_HDGC_AD6P_44 # AK13 GPIO_DIP_SW7 LVCMOS33

set_property PACKAGE_PIN A20      [get_ports "CLK_o"] ;# Bank  47 VCCO - VCC3V3   - IO_L12N_AD0N_47 # A20 PMOD0_0 LVCMOS33
set_property IOSTANDARD  LVCMOS33 [get_ports "CLK_o"] ;# Bank  47 VCCO - VCC3V3   - IO_L12N_AD0N_47 # A20 PMOD0_0 LVCMOS33
#set_property PACKAGE_PIN B20      [get_ports "pl_clk0"] ;# Bank  47 VCCO - VCC3V3   - IO_L12P_AD0P_47 # B20 PMOD0_1 LVCMOS33
#set_property IOSTANDARD  LVCMOS33 [get_ports "pl_clk0"] ;# Bank  47 VCCO - VCC3V3   - IO_L12P_AD0P_47 # B20 PMOD0_1 LVCMOS33

set_property LOC SLICE_X49Y78 [get_cells -hierarchical {qout_reg[0]}]
set_property LOC SLICE_X49Y78 [get_cells -hierarchical {qout_reg[1]}]
set_property LOC SLICE_X49Y78 [get_cells -hierarchical {qout_reg[2]}]
set_property LOC SLICE_X49Y78 [get_cells -hierarchical {qout_reg[3]}]
set_property LOC SLICE_X49Y90 [get_cells -hierarchical {qout_reg[4]}]
set_property LOC SLICE_X49Y90 [get_cells -hierarchical {qout_reg[5]}]
set_property LOC SLICE_X49Y90 [get_cells -hierarchical {qout_reg[6]}]
set_property LOC SLICE_X49Y90 [get_cells -hierarchical {qout_reg[7]}]

