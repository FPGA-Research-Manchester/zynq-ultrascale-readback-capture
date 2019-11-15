Revision 4
; Created by Vivado 2018.2.1 SW Build 2288692 at Tue Oct 22 16:11:29 2019
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <SLR name> <SLR number> <information>
; <information> may be zero or more <key>=<value> pairs
; Block=<blockname>    specifies the block associated with this memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; Ram=<ram id>:<bit>   This is used in cases where a SLICE LUT is used
; Rom=<ram id>:<bit>   as RAM (or ROM) and for Block RAM.  <Ram id> will
;                      be a letter indicating which LUT within the SLICE
;                      or a 'B' for Block RAM.  For SLICE LUTs <bit> is a
;                      decimal number. For Block RAM this will be BIT or
;                      PARBIT indicating a data or parity bit and a decimal
;                      number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the FPGA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Bit   30594158 0x0004640c  878 SLR0 0 Block=SLICE_X49Y78 Latch=AQ2 Net=cntr/Q[0]
Bit   30594160 0x0004640c  880 SLR0 0 Block=SLICE_X49Y78 Latch=BQ2 Net=cntr/Q[1]
Bit   30594164 0x0004640c  884 SLR0 0 Block=SLICE_X49Y78 Latch=CQ2 Net=cntr/Q[2]
Bit   30594166 0x0004640c  886 SLR0 0 Block=SLICE_X49Y78 Latch=DQ2 Net=cntr/Q[3]
Bit   30594830 0x0004640c 1550 SLR0 0 Block=SLICE_X49Y90 Latch=AQ2 Net=cntr/Q[4]
Bit   30594832 0x0004640c 1552 SLR0 0 Block=SLICE_X49Y90 Latch=BQ2 Net=cntr/Q[5]
Bit   30594836 0x0004640c 1556 SLR0 0 Block=SLICE_X49Y90 Latch=CQ2 Net=cntr/Q[6]
Bit   30594838 0x0004640c 1558 SLR0 0 Block=SLICE_X49Y90 Latch=DQ2 Net=cntr/Q[7]
