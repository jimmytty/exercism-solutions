function ispangram(input)
    alphabet = Dict()
    for letter in collect('A':'Z')
        alphabet[letter] = 1
    end

    for char in uppercase(input)
        delete!(alphabet, char)
    end

    boolean = length(alphabet) == 0 ? true : false

    return boolean
end
