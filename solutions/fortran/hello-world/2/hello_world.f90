module hello_world
contains
  ! function hello()
  !   character(13) :: hello
  !   hello = "Hello, World!"
  ! end function hello

  character(13) function hello() result(msg)
    msg = "Hello, World!"
  end function hello

end module hello_world


