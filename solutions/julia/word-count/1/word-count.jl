function wordcount(sentence)
    words = Dict()

    text = lowercase(sentence)
    text = replace(text, r"[^0-9a-z']+" => " ")
    text = replace(text, r"([a-z])'([a-z])" => s"\1_\2")
    text = replace(text, "'" => "")
    text = replace(text, "_" => "'")
    text = strip(text)

    for w in split(text)
        if w == "" continue end
        if haskey(words, w)
            words[w] = words[w] + 1
        else
            words[w] = 1
        end
    end
    return words
end
