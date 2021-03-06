.SUBCKT Adder_4bit VSS VDD  A[3] A[2] A[1] A[0] B[3] B[2] B[1] B[0] carry_out sum[3] sum[2] sum[1] sum[0]
XU13 VSS VDD  A[0] B[0] n15 NAND2x1_ASAP7_75t_R
XU14 VSS VDD  A[0] B[0] n14 OR2x2_ASAP7_75t_R
XU15 VSS VDD  n14 n15 sum[0] AND2x2_ASAP7_75t_R
XU16 VSS VDD  B[3] n20 INVx8_ASAP7_75t_R
XU17 VSS VDD  A[3] n21 INVx8_ASAP7_75t_R
XU18 VSS VDD  A[2] n19 INVx8_ASAP7_75t_R
XU19 VSS VDD  A[3] B[3] n9 XOR2xp5_ASAP7_75t_R
XU20 VSS VDD  B[2] A[2] n11 NAND2xp33_ASAP7_75t_R
XU21 VSS VDD  B[1] A[1] n17 NAND2xp33_ASAP7_75t_R
XU22 VSS VDD  B[2] A[2] n13 OR2x2_ASAP7_75t_R
XU23 VSS VDD  B[1] A[1] n10 NOR2xp33_ASAP7_75t_R
XU24 VSS VDD  n10 n15 n16 OR2x2_ASAP7_75t_R
XU25 VSS VDD  n16 n17 n11 n12 NAND3xp33_ASAP7_75t_R
XU26 VSS VDD  n13 n12 n22 NAND2xp5_ASAP7_75t_R
XU27 VSS VDD  n9 n22 sum[3] XNOR2xp5_ASAP7_75t_R
XU28 VSS VDD  B[1] A[1] n15 A0  sum[1] FAx1_ASAP7_75t_R
XU29 VSS VDD  n17 n16 n18 NAND2xp5_ASAP7_75t_R
XU30 VSS VDD  B[2] n18 n19 A1  sum[2] FAx1_ASAP7_75t_R
XU31 VSS VDD  n20 n22 n21 carry_out MAJIxp5_ASAP7_75t_R
.ENDS


