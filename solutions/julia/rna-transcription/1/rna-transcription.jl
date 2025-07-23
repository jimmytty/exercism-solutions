map = Dict(
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
)

function to_rna(dna)
    rna = ""
    for i = 1:length(dna)
        c = dna[i]
        if ! haskey(map, c)
            error(KeyError(""))
        end
        rna = rna * map[c]
    end
    return rna
end
