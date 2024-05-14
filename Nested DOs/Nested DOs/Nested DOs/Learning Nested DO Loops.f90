Program Repayment
    
    Implicit none
    
    Integer     I           ! counter
    Integer ::  N = 12      ! number of payments per year
    Integer     K           ! repayment period (years)
    Integer     TRIPS       ! iteration count
    
    Real    ::  A = 1000    ! principle
    Real        P           ! payment
    Real        R           ! intrest rate
    Real        R0,R1,RINC  ! lowest, highest intrest and increment
    
    
    Read*, R0, R1, RINC
    TRIPS = INT( (R1-R0) / RINC + RINC/2 ) + 1                  ! decides how many rows to print
    R = R0
    
    Print*, "Rate     15 Years    20 Years   25 Years"   ! the headers for the program. How much you have to pay each year.
    Print*
    
    DO I = 1, TRIPS
        
        Write(*, '(F5.2, 1X, "%")', Advance = 'no') 100*R
        
        DO K = 15,25,5
           P = R/N * A * (1 + R/N) ** (N*K) / ((1 + R/N) ** (N*K) - 1)
           Write(*, '(F10.2)', Advance = 'no') P
           
        END DO
        
        Print*
        
        R = R + RINC
        
    END DO
    
    ! Sample Input (0.1, 0.2, 0.01)
    
END
    
    
    
        
                    
            
            
    