local triangle = {}

function triangle.kind(a, b, c)
    if a <= 0 or b <= 0 or c <= 0 then
        error('Input Error')
    end

    if a + b < c or b + c < a or a + c < b then
        error('Input Error')
    end
    
    local type = ''
    if ( a == b and a == c ) then
        type = 'equilateral'
    elseif ( a ~= b and a ~= c and b ~= c ) then
        type = 'scalene'
    else
        type = 'isosceles'
    end
    return type
end

return triangle
