"""Calculate the number of grains on square `square`."""
function on_square(square)
    if square < 1 || square > 64
        throw(DomainError(""))
    end
    sum::UInt64 = 1
    for i in range(1, square -1)
        sum = sum + sum
    end
    return sum
end

"""Calculate the total number of grains after square `square`."""
function total_after(square)
    total = on_square(square) * 2 - 1
end
