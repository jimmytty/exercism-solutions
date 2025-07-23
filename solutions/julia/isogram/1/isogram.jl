function isisogram(s)
    letters = Dict()
    alphabet = collect('a':'z')
    bool = true
    for char in lowercase(s)
        if !(only(char) in alphabet) continue end
        if haskey(letters, char) bool = false end
        letters[char] = 1
    end
    return bool
end
