let square_of_sum x =
  truncate(Float.of_int(x * (x + 1) / 2) ** 2.0)

let sum_of_squares x =
  truncate(Float.of_int(x * (x +1) * (2 * x + 1) / 6))

let difference_of_squares x =
  (square_of_sum x) - (sum_of_squares x)
