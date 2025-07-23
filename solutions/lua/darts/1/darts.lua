local Darts = {}

function Darts.score(x, y)
    local spot = x * x + y * y
    local points = 0
    if     ( spot <=   1 ) then points = 10
    elseif ( spot <=  25 ) then points =  5
    elseif ( spot <= 100 ) then points =  1
    end 
    return points
end

return Darts
