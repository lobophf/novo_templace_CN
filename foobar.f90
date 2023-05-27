PROGRAM FOOBAR
  IMPLICIT NONE

  INTEGER :: N, I
  CHARACTER(LEN=9) :: MESSAGE

  WRITE(*, *) 'Enter a positive integer:'
  READ(*, *) N

  DO I = 1, N
     IF (MOD(I, 3) == 0 .AND. MOD(I, 5) == 0) THEN
        MESSAGE = 'FOOBAR'
     ELSEIF (MOD(I, 3) == 0) THEN
        MESSAGE = 'FOO'
     ELSEIF (MOD(I, 5) == 0) THEN
        MESSAGE = 'BAR'
     ELSE
        WRITE(*, *) I
        CONTINUE
     ENDIF

     WRITE(*, *) MESSAGE
  END DO

END PROGRAM FOOBAR
