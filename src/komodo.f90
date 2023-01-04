PROGRAM main

USE constant,   ONLY: dp !, mode, transient_warning, fdm_time, nod_time, xs_time, &
! inp_time, th_time, get_time
USE read,      ONLY: inp_read
use time
! USE control, ONLY: forward, adjoint, fixedsrc, cbsearch, cbsearcht
! USE trans, ONLY: rod_eject, rod_eject_th

implicit none

type(timer) :: m

call m % on
! Read input
! st = get_time()
call inp_read()
! fn = get_time()
! inp_time = fn - st

! if (scr) then
  write(*,*)
  write(*,*) 'READING INPUT ... DONE'
! end if

! SELECT CASE(mode)
!     CASE('FIXEDSRC')
!         CALL fixedsrc()
!     CASE('ADJOINT')
!         CALL adjoint()
!     CASE('RODEJECT')
!         IF (bther == 0) THEN
!             CALL rod_eject()
!         ELSE
!             CALL rod_eject_th()
!         END IF
!     CASE('BCSEARCH')
!         IF (bther == 0) THEN
!             CALL cbsearch()
!         ELSE
!             CALL cbsearcht()
!         END IF
!     CASE DEFAULT
!         CALL forward()
! END SELECT

! IF (transient_warning) THEN
!     WRITE(ounit,*)
!     WRITE(ounit,*) '  WARNING: ONE OR MORE OUTER ITERATIONS DID NOT CONVERGE.'&
!                    // 'YOU MAY NEED TO REDUCE TIME STEP'
!     WRITE(*,*)
!     WRITE(*,*) '  WARNING: ONE OR MORE OUTER ITERATIONS DID NOT CONVERGE.'&
!                   // 'YOU MAY NEED TO REDUCE TIME STEP'
! END IF

! tot_time = fdm_time + th_time + nod_time + xs_time + inp_time
! WRITE(ounit,*); WRITE(ounit,*); WRITE(ounit,1123)
! WRITE(ounit,1124)inp_time, inp_time/tot_time*100.
! WRITE(ounit,1125)xs_time, xs_time/tot_time*100.
! WRITE(ounit,1126)fdm_time, fdm_time/tot_time*100.
! WRITE(ounit,1127)nod_time, nod_time/tot_time*100.
! WRITE(ounit,1128)th_time, th_time/tot_time*100.
! WRITE(ounit,1129)
! WRITE(ounit,1130)tot_time
! if (scr) then
!   WRITE(*,*); WRITE(*,*); WRITE(*,1123)
!   WRITE(*,1124)inp_time, inp_time/tot_time*100.
!   WRITE(*,1125)xs_time, xs_time/tot_time*100.
!   WRITE(*,1126)fdm_time, fdm_time/tot_time*100.
!   WRITE(*,1127)nod_time, nod_time/tot_time*100.
!   WRITE(*,1128)th_time, th_time/tot_time*100.
!   WRITE(*,1129)
!   WRITE(*,1130)tot_time
! end if
! 1123 format (2X,'CPU time breakdown in seconds')
! 1124 format (4X,'Input reading time   :', F10.4, '  (', F5.1,'%)')
! 1125 format (4X,'XSEC processing time :', F10.4, '  (', F5.1,'%)')
! 1126 format (4X,'CMFD time            :', F10.4, '  (', F5.1,'%)')
! 1127 format (4X,'Nodal update time    :', F10.4, '  (', F5.1,'%)')
! 1128 format (4X,'T-H time             :', F10.4, '  (', F5.1,'%)')
! 1129 format (4X,'------------------------------------------')
! 1130 format (4X,'Total time           :', F10.4)

call m % off

write(*,*) m % elapsed_time
WRITE(*,*)
WRITE(*,*) "  KOMODO EXIT NORMALLY"

END PROGRAM
