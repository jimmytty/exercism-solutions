module bob
  implicit none
contains

  function hey(statement)
    character(100) :: hey
    character(len=*), intent(in) :: statement
    character(len=100) :: phrase
    character(len=100) :: answer
    integer :: size
    integer :: i
    integer :: caps

    phrase = statement
    size   = len(trim(phrase))
    caps   = 0

    do i = 1, size
       if ( iachar(phrase(i:i)) >= 97 .and. iachar(phrase(i:i)) <= 122 ) then
          caps = 0
          exit
       end if
       if ( iachar(phrase(i:i)) >= 65 .and. iachar(phrase(i:i)) <= 90 ) then
          caps = caps + 1
       end if
    end do

    if ( phrase == '' ) then
       answer = 'Fine. Be that way!'
    else if ( phrase(size:size) == '?' ) then
       if ( caps > 0 ) then
          answer = "Calm down, I know what I'm doing!"
       else
          answer = 'Sure.'
       end if
    else if ( caps > 0 ) then
       answer = 'Whoa, chill out!'
    else
       answer = 'Whatever.'
    end if

    hey = answer
  end function hey

end module bob
