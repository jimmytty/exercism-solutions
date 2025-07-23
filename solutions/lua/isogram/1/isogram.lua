local ascii_range = { 65, 90 };

function is_isogram(phrase)
    local boolean = true

    local counter = {}
    for i = 1, string.len(phrase) do
        local upper = string.upper(phrase)
        local char  = string.sub(upper, i, i)
        local byte  = string.byte(char)
        if byte >= ascii_range[1] and byte <= ascii_range[2] then
            counter[byte] = counter[byte] and counter[byte] + 1 or 1
            if counter[byte] > 1 then boolean = false end
        end
    end
    
    return boolean
end

return is_isogram
