function score(str)
    v2l = Dict(
        1  => [ 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' ],
        2  => [ 'D', 'G'                                         ],
        3  => [ 'B', 'C', 'M', 'P'                               ],
        4  => [ 'F', 'H', 'V', 'W', 'Y'                          ],
        5  => [ 'K'                                              ],
        8  => [ 'J', 'X'                                         ],
        10 => [ 'Q', 'Z'                                         ],
    )
    l2v = Dict()
    for (v, ls) in pairs(v2l) for l in ls l2v[l] = v end end
    score = 0
    for s in uppercase(str)
        if ! haskey(l2v, s) continue end
        score += l2v[s]
    end
    return score
end
