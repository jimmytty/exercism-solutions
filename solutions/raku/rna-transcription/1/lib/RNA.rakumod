unit module RNA;

my %map = (
    G => 'C', #
    C => 'G', #
    T => 'A', #
    A => 'U', #
);

sub to-rna ($dna) is export {
    return %map{$dna.comb}.join;
}
