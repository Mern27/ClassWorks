subroutine plot (a, b, f)
    
    implicit none
    
    ! input/ output list
    real*4 :: a, b
    
    ! variables
    integer*4 :: i, ic, imax, imin, j
    character :: line(0:50), blank*1, star*1
    real*4    :: xstep, ymin, ymax, ratio
    real*4    :: x(0:40), y(0:40)
    
    ! external procedure
    real*4    :: f
    
    data    blank, star, line /' ','*',51*' '/
    
    ! first generate table of data pairs x(i), y(i)
    xstep = (b - a) / 40
    x(0)  = a
    y(0)  = f(a)
    
    do i  = 1,40
        
        x(i) = x(i-1) + xstep
        y(i) = f( x(i) )
        
    end do
    
    ! use the subroutine MINMAX to determine the range
    
    call minmax(y,41,ymax,imax,ymin,imin)
    
    ! print the overall headings for the y-axis
    write(*,10) ymin, ymax
    
    ! step through the data pairs, position the '*'
    ! and print the table
    
    do i = 0, 40
        ratio   =   (y(i) - ymin) / (ymax - ymin)
        ic      =   50.*ratio
        line(ic)=   star
        
        write(*,11) x(i), (line(j), j = 0, 50)
        
        ! remember to blank out the star to be set up for the next line
        
        line(ic) = blank
        
    end do
    
    return
    
    !--------------------------------------------------------
    
    ! formats
    
10  format (//, t10, 'a plot of the function ', /, &
                t8, 'ymin', t58 'ymax', /, &
                t8, f5.2, t58, f5.2, /, &
                t5, 'x', t10, '+', t35, '+' t60, '+', /, &
                t9, '|', 51('-'), '|' )
    
11  format (t2, f5.2, t9, '|', 51a, '|')
                
    end
    
    