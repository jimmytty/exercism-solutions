unit module NucleotideCount;

sub nucleotide-count ($strand) is export {
    my %nucleotides = (
        A => 'adenine',
        C => 'cytosine',
        G => 'guanine',
        T => 'thymine',
    );

    my %count = %nucleotides.keys.map: { $_ => 0 };
    my @strand = $strand.comb;
    for @strand -> $char {
        if ( not %nucleotides{$char}:exists ) {
            die 'Invalid nucleotide in strand';
        }
        %count{$char} += 1;
    }

    return %count;
}
