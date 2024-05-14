program mean_std 
    
    implicit none
    
    integer              :: I, N
    real                 :: STD = 0
    real, dimension(100) :: X
    real                 :: XBAR = 0
    
    open (1, file = 'data')
    
    read (1, *) N
    
    do I = 1, N
        
        read ( 1, *) X(I)
        XBAR = XBAR + X(I)
    end do
    
    XBAR = XBAR / N
    
    dO I = 1, N
        
        STD = STD + ( X(I) - XBAR) ** 2
    end do
    
    STD = sqrt ( STD / (N-1) )
    print*, 'mean: ', XBAR
    print*, 'std deviation: ', STD
    
end
    
    
    