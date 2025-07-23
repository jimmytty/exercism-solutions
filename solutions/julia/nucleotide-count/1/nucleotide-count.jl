"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    count = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for nucleotide in strand
        if ! haskey(count, nucleotide)
            throw(DomainError(strand))
        end
        count[nucleotide] += 1
    end
    return count
end
