.title 4-bit Adder

***LIBRARY***
.protect
.include '7nm_TT.pm'
.include 'Adder_4bit_SYN_new.sp'
.include 'asap7sc7p5t_SIMPLE_RVT.sp'
.include 'asap7sc7p5t_INVBUF_RVT.sp'
.unprotect

.vec pattern_adder_4bit.vec

***VOLTAGE SOURCE***
.global VDD GND
Vsource VDD GND 0.7V

Xadder GND VDD A3 A2 A1 A0 B3 B2 B1 B0 carry_out sum3 sum2 sum1 sum0 Adder_4bit

C1 carry_out GND 5f
C2 sum0 GND 5f
C3 sum1 GND 5f
C4 sum2 GND 5f
C5 sum3 GND 5f


.trans 1ps 800ps 
.param VDD1=0.7 
.meas tran pwr AVG POWER
.meas tran Tplh trig v(A0) val=“VDD1*0.5” fall=1 targ v(sum3) val=”VDD1*0.5” rise=1
.option post
.option probe
.probe v(*) i(*)
.option captab
.TEMP 25
.END