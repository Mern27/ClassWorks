IMPLICIT NONE    
    
    INTEGER I
    REAL R
    
    DO I = 97, 122
    
        WRITE (*, 100, ADVANCE = 'YES') I, ACHAR (I)
        
    ENDDO
    
    PRINT *
    
100 FORMAT (I5, 3X, A1)
    
    END