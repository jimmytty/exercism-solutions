local EliudsEggs = {}

function EliudsEggs.egg_count(number)
    local eggs    = 0
    local decimal = number
    local binary  = ''
    while decimal > 0 do
        if math.fmod(decimal, 2) == 1 then eggs = eggs + 1 end
        decimal = decimal // 2
    end
    return eggs
end

return EliudsEggs
