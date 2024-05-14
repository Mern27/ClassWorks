IMPLICIT NONE
    
    REAL X
    REAL A
    INTEGER I
    
    WRITE(*, 10, ADVANCE = 'NO') "Enter number to be square rooted: "
    
    READ *, A
    PRINT*
    
    X = 1
    
    DO I = 1,6
        
        X = ( X + A/X) / 2
        
        PRINT*, x
        
    END DO
    
    PRINT*
    PRINT*, 'FORTRAN 90''S VALUE: ', SQRT ( A )
10  FORMAT (A)
    
    
    END