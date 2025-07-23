function triangle(n)

    if n < 0 throw(DomainError("")) end

    rows = [[0]]
    pop!(rows)
    for i in range(1, n)
        if i == 1 append!(rows, [[1]]); continue end
        r = [1]
        for j in range(1, length(rows[i - 1]) - 1)
            a = rows[i - 1][j]
            b = rows[i - 1][j + 1]
            c = a + b
            append!(r, c)
        end
        append!(r, 1)
        push!(rows, r)
    end
    return rows
end
