module raindrops
  implicit none
contains

  function convert(i)
    integer :: i
    character(20) :: convert

    convert = ''

    if (mod(i, 3) == 0) then; convert = trim(convert) // 'Pling'; endif
    if (mod(i, 5) == 0) then; convert = trim(convert) // 'Plang'; endif
    if (mod(i, 7) == 0) then; convert = trim(convert) // 'Plong'; endif

    if ( convert .eq. '' ) then; write(convert, '(i0)') i; end if

  end function convert

end module raindrops
