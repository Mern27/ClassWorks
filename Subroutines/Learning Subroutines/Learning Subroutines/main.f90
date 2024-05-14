program Learning_subroutines
    
    implicit none
    
    external swop
    
    real a, b
    
    read*, a, b         ! the value that we enter   

    call swop(a, b)     ! calling the subroutine
    print*, a, b        ! printing the swapped values
    call swop(a, b)     ! calling it again
    print*, a, b
    
end