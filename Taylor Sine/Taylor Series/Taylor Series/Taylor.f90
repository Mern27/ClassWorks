program taylor
  implicit none
  real :: x, deg, term, sin_x
  integer :: i, n
  real, parameter :: tolerance = 1.0e-6
  real, parameter :: pi = 3.141592653589793  ! Constant for pi

  write (*, *) "Enter the value of x (in degrees):"
  read (*, *) deg

  ! Convert degrees to radians
  x = deg * pi / 180.0

  sin_x = 0.0
  i = 1
  term = x

  ! Loop until the absolute value of the term is less than the tolerance
  do while (abs(term) .gt. tolerance)
    sin_x = sin_x + term
    n = 2 * i + 1
    ! Use a more robust way to calculate factorial to avoid overflow
    factorial = 1.0
    do j = 1, n
      factorial = factorial * j
    end do
    term = -term * x**2 / factorial
    i = i + 1
  end do

  write (*, *) "Sin(x) using Taylor Series:", sin_x
  write (*, *) "Number of terms used:", i - 1
  
  print*, 'the value calculated using fortran 90: ', SIN(x)

end program taylor