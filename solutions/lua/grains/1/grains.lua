local grains = {}

function grains.square(n)
    local g = 1.0
    for i = 1, n - 1 do
        g = g + g
    end
    return g
end

function grains.total()
    return grains.square(64) * 2 - 1
end

return grains
