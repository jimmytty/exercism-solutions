module hamming
  implicit none
contains

  function compute(strand1, strand2, distance)
    character(*) :: strand1, strand2
    integer :: distance
    logical :: compute

    integer size1
    integer size2
    integer i

    size1    = len(trim(strand1))
    size2    = len(trim(strand2))
    distance = 0

    if ( size1 /= size2 ) then
       compute = .false.
    else
       compute = .true.

       do i = 1, size1
          if ( strand1(i:i) .ne. strand2(i:i) ) then
             distance = distance + 1
          end if
       end do

    end if

    end function compute

end module hamming
