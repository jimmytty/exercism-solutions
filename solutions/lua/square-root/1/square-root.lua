local SquareRoot = {}

function SquareRoot.square_root(radicand)
    local sq = 1
    while true do
        if ( sq * sq > radicand ) then
            sq = sq - 1
            break
        end
        sq = sq + 1
    end
    return sq
end

return SquareRoot
