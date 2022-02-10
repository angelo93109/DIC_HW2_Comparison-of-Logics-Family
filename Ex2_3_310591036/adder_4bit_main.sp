.title 4-bit Adder

***LIBRARY***
.protect
.include '7nm_TT.pm'
.include 'Adder_4bit_SYN_REVISE.sp'
*.include 'Adder_4bit_SYN_CMOS.sp'
.include 'asap7sc7p5t_SIMPLE_RVT.sp'
.include 'asap7sc7p5t_INVBUF_RVT.sp'
.include 'logic_family.sp'
.unprotect

*.vec pattern_for_delay.vec
.vec pattern_for_power.vec

***VOLTAGE SOURCE***
.global VDD GND CLK
Vsource VDD GND 0.7V
VCLK CLK GND PULSE(0v 0.7v 90ps 20ps 20ps 90ps 200ps) *clock for dynamic logic 

Xadder GND VDD CLK A3 A2 A1 A0 B3 B2 B1 B0 carry_out sum3 sum2 sum1 sum0 Adder_4bit 	*for revise version
*Xadder GND VDD A3 A2 A1 A0 B3 B2 B1 B0 carry_out sum3 sum2 sum1 sum0 Adder_4bit 		*for CMOS version

C1 carry_out GND 5f
C2 sum0 GND 5f
C3 sum1 GND 5f
C4 sum2 GND 5f
C5 sum3 GND 5f


*.trans 1ps 1300ps  *trans for delay
*.param VDD1=0.7 
*.meas tran Tplh trig v(A0) val=“VDD1*0.5” fall=1 targ v(sum3) val=”VDD1*0.5” rise=1
.trans 0.1ns 52ns   *trans for power
.meas tran pwr AVG POWER
*.measure tran area find design_area at=500ps
.option post
.option probe
.probe v(*) i(*)
.option captab
.TEMP 25
.END