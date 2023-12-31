---
title: %FTEM
theme: _config.yml
filename: ftem
---

# %FTEM Card

This card is used to input fuel temperature parameters.

| `%FTEM` | Variable | Description | Remarks |
| --- | --- | --- | --- |
| LINE 1 | CFTEM | Uniform distribution of the fuel temperature in Kelvin | Used as guess if `%THER` card active |
|        | RFTEM | Fuel temperature reference in Kelvin from which the interpolation is done | Dummy if `%XTAB` card is active |
| LINE 2 | FISGTR(g) | Macroscopic Cross Section changes due to changes of fuel temperature in Kelvin  | Repeat LINE 2 NG times. And again repeat this input segment NMAT times. **This line is not necessary if `%XTAB` card present** |
|   | FSIGA(g) |
|   | FNUF(g) |
|   | FSIGF(g) |
|   | FSIGS(g,1:NG) |
| LINE 3 | POPT | Print option if users want to print this card | Optional |

Example:
```
! FUEL TEMPERATURE CARD
%FTEM
891.19  891.45  ! Average Fuel Temperature and fuel temperature Ref. in Kelvin
! CX change per Fuel Temperature Changes
!  sigtr          siga         nu*sigf     kappa*sigf sigs_g1   sigs_g2
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00    !COMP 1
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00    !COMP 2
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00
 0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00  0.0   0.00000E+00    !COMP 3
-3.09197E-05   3.49709E-05   6.40134E-07   7.15412E-18  0.0  -2.75536E-05
-0.000137292  -3.71806E-05  -5.63037E-05  -7.39188E-16  0.0   0.00000E+00    !COMP 4
-3.08607E-05   3.51798E-05   9.97431E-07   1.18685E-17  0.0  -2.76766E-05
-0.000117481  -3.77039E-05  -6.04155E-05  -7.93170E-16  0.0   0.00000E+00    !COMP 5
-3.09165E-05   3.53841E-05   1.41847E-06   1.74269E-17  0.0  -2.78390E-05
-0.000101337  -3.77558E-05  -0.000063096  -8.28363E-16  0.0   0.00000E+00    !COMP 6
-3.13746E-05   3.48699E-05   9.45431E-07   1.18685E-17  0.0  -2.73550E-05
-0.000108271  -3.72748E-05  -5.79662E-05  -7.60849E-16  0.0   0.00000E+00    !COMP 7
-3.15503E-05   3.47274E-05   9.26078E-07   1.08935E-17  0.0  -2.72381E-05
-0.000105521  -3.71808E-05  -5.71108E-05  -7.49575E-16  0.0   0.00000E+00    !COMP 8
-3.17281E-05   3.46026E-05   9.05802E-07   1.06166E-17  0.0  -2.71169E-05
-0.000102525  -3.70201E-05  -5.61543E-05  -7.36969E-16  0.0   0.00000E+00    !COMP 9
-3.14192E-05   3.50637E-05   1.35642E-06   1.74269E-17  0.0  -2.75049E-05
-9.38886E-05  -3.71403E-05  -6.05052E-05  -7.94252E-16  0.0   0.00000E+00    !COMP 10
-3.15908E-05   3.49119E-05   1.33336E-06   1.62769E-17  0.0  -2.73835E-05
-9.17126E-05  -3.69909E-05  -5.96284E-05  -7.82716E-16  0.0   0.00000E+00    !COMP 11
1
```
