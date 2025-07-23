module acronym
  implicit none
contains

  function abbreviate(s)
    character(len=*), intent(in) :: s
    character(len=len_trim(s)) :: abbreviate
    integer i, j, c
    logical state
    state = .true.
    j = 0
    abbreviate = ''
    do i = 1, len_trim(s)
       c = iachar(s(i:i))
       if ( c == 32 .or. c == 45 ) then
          state = .true.
          continue
       endif

       if ( state .and. (                   &
            ( c >= 65 .and. c <=  90 ) .or. &
            ( c >= 97 .and. c <= 122 ))     &
            ) then
          j = j + 1
          state = .false.
          if ( c > 90) then; abbreviate(j:j) = achar(c - iachar(' '))
          else             ; abbreviate(j:j) = achar(c)
          endif
       end if

    end do
  end function abbreviate

end module acronym
