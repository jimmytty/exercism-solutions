package NucleotideCount;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<count_nucleotides>;

sub count_nucleotides ($strand) {
    my $count = { A => 0, C => 0, G => 0, T => 0 };
    foreach my $c ( split //, $strand ) {
        die 'Invalid nucleotide in strand' unless exists $count->{$c};
        $count->{$c}++;
    }
    return $count;
}

1;
