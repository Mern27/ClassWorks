PROGRAM Invest
    ! compound growth of an investment.
    
    IMPLICIT NONE
    
    REAL    bal     !balance
    REAL    rate    !intrest rate   
    INTEGER period  !period of investment
    INTEGER years   !year count
    
    PRINT*, 'Initial balance: '
    READ*,  bal
    
    PRINT*, 'Period of investment (years): '
    READ*, period
    
    PRINT*, 'Intrest rate (per annum, as decimal fraction): '
    READ*, rate
    
    PRINT*, 'Year Balance'
    
    DO years = 1, period
        
        bal = bal + rate * bal
        
        PRINT*, bal
        
    END DO
    
END
    