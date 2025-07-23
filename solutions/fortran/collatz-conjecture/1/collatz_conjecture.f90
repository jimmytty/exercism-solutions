module collatz_conjecture
  implicit none
contains

  integer function steps(i)
    integer :: i
    integer :: n

    steps = -1
    if (i <= 0) stop

    steps = 0
    n = i
    do while ( n > 1 )
       if ( mod(n, 2) == 0 ) then
          n = n / 2
       else
          n = n * 3 + 1
       end if
       steps = steps + 1
    end do

  end function

end module
