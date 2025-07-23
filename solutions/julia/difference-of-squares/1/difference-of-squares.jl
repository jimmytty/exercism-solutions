"Square the sum of the first `n` positive integers"
function square_of_sum(n)
    sum = 0
    for number in collect(1:n)
        sum += number
    end
    sum *= sum
    return sum
end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n)
    sum = 0
    for number in collect(1:n)
        sum += number * number
    end
    return sum
end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n)
    return square_of_sum(n) - sum_of_squares(n)
end
