    Program plotter
    Implicit none
    
    real*4, External:: F
    
    
    call plot(0.,10.,F)
    stop
    
    end
    
    !-----------------------
    
    function F(x)
    F = sin(0.31415926*X) ** 2
    return
    
    end 