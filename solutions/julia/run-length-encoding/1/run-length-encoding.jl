function encode(s)
    if s == "" return s end
    ochar   = ""
    cchar   = ""
    count   = 0
    encoded = ""
    for cchar in s
        if ochar != "" && cchar != ochar
            if count > 1
                encoded = encoded * string(count) * ochar
            else
                encoded = encoded * ochar
            end
            count = 0
        end
        ochar = cchar
        count = count + 1
    end
    if count > 1
        encoded = encoded * string(count) * ochar
    else
        encoded = encoded * ochar
    end

    return encoded
end


function decode(s)
    digits  = ""
    count   = 1
    letter  = ""
    decoded = ""
    for char in s
        if isdigit(char)
            digits = digits * char
        else
            letter = char
            if digits != "" count  = parse(Int, digits) end
            for i in 1:count
                decoded = decoded * char
            end
            digits = ""
            count  = 1
        end
    end
    return decoded
end
