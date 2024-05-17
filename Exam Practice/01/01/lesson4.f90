subroutine lesson4
    
    real    A
    real    X
    integer I
    
    write(*,*) "enter number to be sqrt: "
    
    read*, A
    
    print*
    
    X = 1
    
    do I = 1,10
        
        X = (X + A/X) / 2.
        
        Print*, X
        
    end do
    
    end
    