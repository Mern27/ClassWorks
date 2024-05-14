subroutine swop(x, y)
    
    implicit none
    
    real temp, x, y
    temp = x
    x = y
    y = temp
    
    return
    
    end
