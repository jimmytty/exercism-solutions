local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local digits = math.floor(math.log(math.abs(number),10) + 1)
    if number == 0 then
        digits = 1
    end

    local n    = number
    local calc = 0
    while n > 0 do
        local r = n % 10
        calc = calc + r ^ digits
        n = n // 10
    end

    if calc == number then
        return true
    end
    return false
end

return ArmstrongNumbers
