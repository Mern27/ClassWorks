program taylor
  implicit none
  real :: x, term, sin_x, factorial
  integer :: i, n
  real, parameter :: tolerance = 1.0e-6

  write (*, *) "Enter the value of x (in radians):"
  read (*, *) x

  sin_x = 0.0
  factorial = 1.0
  i = 1
  term = x

  ! Loop until the absolute value of the term is less than the tolerance
  do while (abs(term) .gt. tolerance)
    sin_x = sin_x + term
    n = 2 * i + 1
    factorial = factorial * n * (n - 1)
    term = -term * x**2 / factorial
    i = i + 1
  end do

  write (*, *) "Sin(x) using Taylor Series:", sin_x
  write (*, *) "Number of terms used:", i - 1

end program taylor