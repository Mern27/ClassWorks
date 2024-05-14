PROGRAM QESS
implicit none

! Specification part
integer :: a , b , c , d
real :: real_part , imag_part

! Execution part
print *, " Type in values for a , b and c "
read *, a, b, c

if (a.ne.0) then
! calculate discriminant
d = b*b - 4*a*c
if (d.eq.0) then ! one root
 print *, " Root is ", -b /(2.*a)
else if (d.gt.0) then ! two real roots
print *, " Roots are ", (-b + sqrt ( real (d )))/(2.* a), &
" and ", (- b - sqrt ( real (d )))/(2.* a)
else
    real_part = -b /(2.* a)
! since d < 0, calculate SQRT of -d which will be positive .
imag_part = sqrt(real ( -d ))/(2.* a)
print *, "1 st root ", real_part , "+ ", imag_part , "j "
print *, "2 nd root ", real_part , "- ", imag_part , "j "
end if
else
! a is equal to 0 so ...
print *, " Not a quadratic equation "
end if
STOP
END PROGRAM QESS