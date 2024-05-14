Module utils_mod
    
    real, parameter :: PI = 3.1415927
    
    contains    ! members
    
    subroutine swop (x, y)
    
    implicit none
    
    real x, y
    real temp
    
    temp = x
    x = y
    y = temp
    
    return
    end subroutine swop
    
end module utils_mod