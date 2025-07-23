return function(n)
    if ( n < 1 ) then
        error('Only positive numbers are allowed')
    end
    local steps = 0
    while ( n > 1 ) do
        n = n % 2 == 0 and n / 2 or n * 3 + 1
        steps = steps + 1
    end
    return steps
end
