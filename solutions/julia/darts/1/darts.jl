const radius = [ 1, 5, 10 ]
const points = reverse(radius)

function score(x, y)
    result = 0
    spot   =  sum(map(n->n^2,[x,y]))
    for i = 1:size(radius)[1]
        if spot <= radius[i] ^ 2
            result = points[i]
            break
        end
    end
    return result
end
