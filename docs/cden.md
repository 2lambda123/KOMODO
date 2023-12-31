---
title: %CDEN
theme: _config.yml
filename: cden
---

# %CDEN Card

This card is used to input coolant density parameters.

| `%CDEN` | Variable | Description | Remarks |
| --- | --- | --- | --- |
| LINE 1 | CCDEN | Uniform distribution of coolant density in g/cm3 | Used as guess if `%THER` card active |
|        | RCDEN | Coolant density reference in g/cm3 from which the interpolation is done | Dummy if `%XTAB` card present |
| LINE 2 | LSGTR(g) | Macroscopic Cross Section changes due to changes of coolant density in g/cm3  | Repeat LINE 2 NG times. And again repeat this input segment NMAT times. **This line is not necessary if `%XTAB` card present** |
|   | LSIGA(g) |
|   | LNUF(g) |
|   | LSIGF(g) |
|   | LSIGS(g,1:NG) |
| LINE 3 | POPT | Print option if users want to print this card | Optional |

Example:
```
! COOLANT DENSITY CARD
%CDEN
0.7464  0.7125  ! Average Coolant Density and Coolant Density Ref. in g/cm3
! CX change per Coolant Density Changes
!  sigtr          siga         nu*sigf  kappa*sigf sigs_g1   sigs_g2
7.45756E-02  2.07688E-04  0.00000E+00  0.00000E+00  0.0  3.71310E-02
5.33634E-01  7.58421E-03  0.00000E+00  0.00000E+00  0.0  0.00000E+00    !COMP 1
0.00000E+00  0.00000E+00  0.00000E+00  0.00000E+00  0.0  0.00000E+00
0.00000E+00  0.00000E+00  0.00000E+00  0.00000E+00  0.0  0.00000E+00    !COMP 2
0.00000E+00  0.00000E+00  0.00000E+00  0.00000E+00  0.0  0.00000E+00
0.00000E+00  0.00000E+00  0.00000E+00  0.00000E+00  0.0  0.00000E+00    !COMP 3
1.35665E-01  1.55185E-03  9.20694E-04  1.02392E-14  0.0  2.93195E-02
9.92628E-01  2.52662E-02  2.47746E-02  3.25255E-13  0.0  0.00000E+00    !COMP 4
1.35748E-01  1.61491E-03  9.64160E-04  1.08141E-14  0.0  2.92696E-02
9.81985E-01  2.86667E-02  3.14993E-02  4.13542E-13  0.0  0.00000E+00    !COMP 5
1.35827E-01  1.68015E-03  1.01410E-03  1.14771E-14  0.0  2.92154E-02
9.72267E-01  3.19571E-02  3.81097E-02  5.00328E-13  0.0  0.00000E+00    !COMP 6
1.31033E-01  1.68397E-03  9.81951E-04  1.08141E-14  0.0  2.82489E-02
9.34697E-01  3.14240E-02  3.51588E-02  4.61715E-13  0.0  0.00000E+00    !COMP 7
1.29379E-01  1.71972E-03  9.88437E-04  1.11322E-14  0.0  2.78895E-02
9.18171E-01  3.24715E-02  3.63251E-02  4.77078E-13  0.0  0.00000E+00    !COMP 8
1.27682E-01  1.74989E-03  9.95175E-04  1.12209E-14  0.0  2.75202E-02
9.01293E-01  3.35945E-02  3.74499E-02  4.91900E-13  0.0  0.00000E+00    !COMP 9
1.31116E-01  1.75528E-03  1.03522E-03  1.14771E-14  0.0  2.81877E-02
9.24925E-01  3.49853E-02  4.20693E-02  5.52387E-13  0.0  0.00000E+00    !COMP 10
1.29463E-01  1.79499E-03  1.04291E-03  1.18534E-14  0.0  2.78259E-02
9.08456E-01  3.61032E-02  4.33215E-02  5.68857E-13  0.0  0.00000E+00    !COMP 11
1
```
