program newton
    
    implicit none
    
    integer ::  ITS         =   0           ! iteration counter
    integer ::  MAXITS      =   20          ! maximum iterations
    integer ::  CONVERGED   =   .FALSE.     ! convergence flag
    real    ::  EPS         =   1E-6        ! maximum error
    real    ::  X           =   2           ! starting guess
    
    
    do while (.not. CONVERGED .and. ITS .lt. MAXITS)
        X = X - F(X) / DF (X)
        print*, X, F(X)
        ITS = ITS + 1
        CONVERGED = ABS( F(X) ) .le. EPS
        
    end do
    
    if (CONVERGED) then
        print*, 'newton converged'
    else
        print*, 'newton diverged'
        
    end if
    
    contains !internal subprograms
    
    function f(x)
    ! problem is to be solve f(x)=0
    
    real F, X
    F= X ** 3 + X - 3
    end function F
    
    function df(x)
    ! first derivative of f(x)
    real DF, X
    DF = 3 * X ** 2 + 1
    
    end function DF
    
    end
