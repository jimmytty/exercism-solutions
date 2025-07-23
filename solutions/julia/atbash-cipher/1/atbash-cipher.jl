function tr(char)
    alpha = map( c -> string(c) , collect('a':'z') )
    idx = findfirst(c -> c == string(char), alpha)
    new = isnothing(idx) ? char : alpha[end + 1 - idx]
    return new
end

function encode(input)
    text = lowercase(input)
    encoded = ""
    for char in text
        if ispunct(char) || isspace(char) continue end
        encoded = encoded * tr(char)
    end
    encoded = strip(replace(encoded, r"(.{5})" => s"\1 "))
    return encoded
end

function decode(input)
    decoded = ""
    for char in input
        if isspace(char) continue end
        decoded = decoded * tr(char)
    end
    return decoded
end

