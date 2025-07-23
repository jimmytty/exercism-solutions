module pangram
  implicit none
contains

  logical function is_pangram(sentence)
    character(*)      :: sentence
    character(len=len(sentence)) :: string
    character(len=26) :: alpha
    integer i, c, count

    print *, 'SENTENCE: ' // sentence

    do i = 1, len(sentence)
       c = iachar(sentence(i:i))
       if ( c >= 65 .and. c <= 90 ) then
          string(i:i) = achar(c + iachar(' '))
       else
          string(i:i) = sentence(i:i)
       end if
    end do

    alpha = 'abcdefghijklmnopqrstuvwxyz'
    count = 0
    do i = 1, len(alpha)
       if ( index(string, alpha(i:i)) > 0 ) count = count + 1
    end do

    is_pangram = count == len(alpha)

   end function is_pangram

end module pangram
