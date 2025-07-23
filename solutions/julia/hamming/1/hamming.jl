"Calculates the Hamming Distance between two DNA strands."
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError(""))
    end
    
    count = 0
    for i = 1:length(a)[1]
        if a[i] != b[i]
            count += 1
        end
    end
    return count
end
