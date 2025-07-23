function raindrops(number)
    sound = ""
    factors = Dict( 3 => "Pling", 5 => "Plang", 7 => "Plong" )
    for factor in sort(collect(keys(factors)))
        if number % factor == 0
            sound = string(sound, factors[factor])
        end
    end
    return sound == "" ? string(number) : sound
end
