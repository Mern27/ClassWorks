program learning_modules
    
    USE utils_mod
    
    implicit none
    
    real a, b
    
    read*, a
    b = pi
    
    call swop(a, b)
    
    print*, a, b
    
    
end
