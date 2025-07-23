function luhn(digits)
    digits = replace(digits, " " => "")

    if isnothing(tryparse(Int, digits)) || length(digits) <= 1
        return false
    end

    digits = lpad(digits, 16, "0")
    sum = 0
    for i in eachindex(digits)
        d = parse(Int, digits[i])
        c = i % 2 == 0 ? d : d * 2
        if c > 9 c = c - 9 end
        sum = sum + c
    end

    return sum % 10 == 0
end
