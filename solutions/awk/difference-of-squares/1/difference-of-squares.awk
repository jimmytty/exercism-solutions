function square_of_sum(max) {
    sum = 0
    for ( n = 1; n <= max; n++ ) sum += n
    return sum ^ 2
}

function sum_of_squares(max) {
    sum = 0
    for ( n = 1; n <= max; n++ ) sum += n ^ 2
    return sum
}

BEGIN {
    FS=","
}
$1 == "square_of_sum"  { print square_of_sum($2)  }
$1 == "sum_of_squares" { print sum_of_squares($2) }
$1 == "difference"     { print square_of_sum($2) - sum_of_squares($2) }
