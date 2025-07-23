module matrix
  implicit none

contains

  function row(matrix, dims, i) result(r)
    integer, dimension(2), intent(in) :: dims
    !! Matrix dimensions (nrows, ncols)
    character(len=*), dimension(dims(1)), intent(in) :: matrix
    !! Matrix as a 1-d array of strings
    integer, intent(in) :: i
    !! Row index
    integer, dimension(dims(2)) :: r
    r(:) = 0
    read(matrix(i), *) r
  end function row

  function column(matrix, dims, j) result(c)
    integer, dimension(2), intent(in) :: dims
    !! Matrix dimensions (nrows, ncols)
    character(len=*), dimension(dims(1)), intent(in) :: matrix
    !! Matrix as a 1-d array of strings
    integer, intent(in) :: j
    !! Column index
    integer, dimension(dims(1)) :: c
    integer, dimension(dims(2)) :: ivec
    integer k
    c(:) = 0
    do k = 1, dims(1)
       read(matrix(k), *) ivec
       c(k) = ivec(j)
    end do
  end function column

end module matrix
