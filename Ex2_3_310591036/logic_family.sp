***CMOS INVERTER***
.SUBCKT inv vi vo F=3
MN vo vi GND GND nmos_rvt nfin=F 
MP vo vi VDD VDD pmos_rvt nfin=F
.ENDS 

***Double INVERTER for input***
.SUBCKT invX2 vi vo 
XINV1 vi a1 inv
XINV2 a1 vo inv
.ENDS

***ANDx2(PTL)***
.SUBCKT ANDx2_PTL A B F_out F=3
M1 A B F_out F_out nmos_rvt nfin=F
Xnot B n1 inv 
M2 F_out n1 GND GND nmos_rvt nfin=F
.ENDS 

***ANDx2(DYN)***
.SUBCKT ANDx2_DYN A B CLK F_out 
Xnand A B CLK n1 NANDx2_DYN
Xnot n1 F_out inv
.ENDS 


***XORx2(PTL)***
.SUBCKT XORx2_PTL A B F_out F=3
M1 A n2 F_out F_out nmos_rvt nfin=F
M2 n1 B F_out F_out nmos_rvt nfin=F
Xnot1 A n1 inv 
Xnot2 B n2 inv 
.ENDS

***XORx2(DYN)***
.SUBCKT XORx2_DYN A B CLK F_out F=3
M1 n1 CLK VDD VDD pmos_rvt nfin=F
M2 n1 n5 n2 n2 nmos_rvt nfin=F
M3 n1 B n3 n3 nmos_rvt nfin=F
M4 n2 A n4 n4 nmos_rvt nfin=F
M5 n3 n6 n4 n4 nmos_rvt nfin=F
M6 n4 CLK GND GND nmos_rvt nfin=F
Xnot1 B n5 inv
Xnot2 A n6 inv 
Xnot3 n1 F_out inv
.ENDS

***ORx2(PTL)***
.SUBCKT ORx2_PTL A B F_out F=3
M1 A n1 F_out F_out nmos_rvt nfin=F
M2 VDD B F_out F_out nmos_rvt nfin=F
Xnot B n1 inv 
.ENDS

***ORx2(DYN)***
.SUBCKT ORx2_DYN A B CLK F_out F=3
M1 n1 CLK VDD VDD pmos_rvt nfin=F
M2 n1 A n2 n2 nmos_rvt nfin=F
M3 n1 B n2 n2 nmos_rvt nfin=F
M4 n2 CLK GND GND nmos_rvt nfin=F
Xnot n1 F_out inv
.ENDS

***NORx2(PTL)***
.SUBCKT NORx2_PTL A B F_out F=3
M1 A n1 n2 n2 nmos_rvt nfin=F
M2 VDD B n2 n2 nmos_rvt nfin=F
Xnot1 B n1 inv
Xnot2 n2 F_out inv  
.ENDS

***NORx2(DYN)***
.SUBCKT NORx2_DYN A B CLK F_out F=3
M1 F_out CLK VDD VDD pmos_rvt nfin=F
M2 F_out A n2 n2 nmos_rvt nfin=F
M3 F_out B n2 n2 nmos_rvt nfin=F
M4 n2 CLK GND GND nmos_rvt nfin=F
.ENDS

***NANDx2(PTL)***
.SUBCKT NANDx2_PTL A B F_out 
Xand A B n1 ANDx2_PTL
Xnot n1 F_out inv 
.ENDS 

***NANDx2(DYN)***
.SUBCKT NANDx2_DYN A B CLK F_out F=3
M1 F_out CLK VDD VDD pmos_rvt nfin=F
M2 F_out A n2 n2 nmos_rvt nfin=F
M3 n2 B n3 n3 nmos_rvt nfin=F
M4 n3 CLK GND GND nmos_rvt nfin=F
.ENDS

***NANDx3(PTL)***
.SUBCKT NANDx3_PTL A B C F_out 
Xand1 A B n1 ANDx2_PTL
Xand2 n1 C n2 ANDx2_PTL
Xnot n2 F_out inv
.ENDS 

***NANDx3(DYN)***
.SUBCKT NANDx3_DYN A B C CLK F_out F=3
M1 F_out CLK VDD VDD pmos_rvt nfin=F
M2 F_out A n2 n2 nmos_rvt nfin=F
M3 n2 B n3 n3 nmos_rvt nfin=F
M4 n3 C n4 n4 nmos_rvt nfin=F
M5 n4 CLK GND GND nmos_rvt nfin=F
.ENDS

***XNORx2(PTL)***
.SUBCKT XNORx2_PTL A B F_out F=3
M1 A n2 F_out n3 nmos_rvt nfin=F
M2 n1 B F_out n3 nmos_rvt nfin=F
Xnot1 A n1 inv 
Xnot2 B n2 inv 
Xnot3 n3 F_out inv 
.ENDS

***XNORx2(DYN)***
.SUBCKT XNORx2_DYN A B CLK F_out F=3
M1 F_out CLK VDD VDD pmos_rvt nfin=F
M2 F_out n5 n2 n2 nmos_rvt nfin=F
M3 F_out B n3 n3 nmos_rvt nfin=F
M4 n2 A n4 n4 nmos_rvt nfin=F
M5 n3 n6 n4 n4 nmos_rvt nfin=F
M6 n4 CLK GND GND nmos_rvt nfin=F
Xnot1 B n5 inv
Xnot2 A n6 inv 
.ENDS



