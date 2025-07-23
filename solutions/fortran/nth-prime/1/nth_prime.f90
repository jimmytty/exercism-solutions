module nth_prime
  implicit none
contains

  ! get nth prime
  integer function prime(n)
    integer, intent(in) :: n
    integer number, cp, cf, i
    prime = -1
    number = 2
    cp     = 1

    if ( n == 1 ) then
       prime = number
    else if ( n > 1 ) then
       do while ( cp < n )
          cf = 0;
          number = number + 1
          do i = 2, number
             if ( mod(number, i) == 0 ) cf = cf + 1
             if ( cf > 1 ) exit
          end do
          if ( cf == 1 ) cp = cp + 1
       end do
       prime = number
    end if

  end function prime

end module nth_prime
