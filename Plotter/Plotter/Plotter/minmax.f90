    subroutine minmax (x, n, xmax, imax, xmin, imin)
    
    ! start by defining the maximum / minimum element
    ! to be the first element and tthe location of each
    ! element to be position 1
    
    implicit none
    
    ! input/output list
    integer*4      :: n, imax, imin
    real*4         :: xmax, xmin
    real*4         :: x(n)
    
    ! local variables
    integer*4       :: i
    
    ! initialize code
    xmax    =   x(1)
    xmin    =   x(1)
    imax    =   1
    imin    =   1
    
    ! loop over number 'n' to find out min/max
    do i = 2, n
        
        if (x(i).gt.xmax) then
            ! the current x(i) is larger than the assumed max, so redifine the max and pos. of the max
            xmax = x(i)
            imax = i
            
        end if
        
        ! use similar step for min
        if (x(i).lt.xmin) then
            
            xmin = x(i)
            imin = i
            
        end if
        
    ! close end loop
    end do
    
    return
    
    end