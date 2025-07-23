local HighScores = {}

function HighScores.__call(self, v)
    HighScores.values = v
    return HighScores
end

function HighScores.scores()
    return HighScores.values
end

function HighScores.latest()
    local values = HighScores.values
    return values[#values]
end

function HighScores.personal_best()
    local values = {table.unpack(HighScores.values)}
    table.sort(values, function (a, b) return a > b end)
    return values[1]
end

function HighScores.personal_top_three()
    local values = {table.unpack(HighScores.values)}
    table.sort(values, function (a, b) return a > b end)
    return table.move(values, 1, 3, 1, {})
end

setmetatable(HighScores, HighScores)

return HighScores
