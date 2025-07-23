package Anagram;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<match_anagrams>;

sub match_anagrams {
    my ($input) = @_;

    my $subject2test = join '', sort map {lc} split //, $input->{subject};
    my @anagram;
    foreach my $candidate ( @{ $input->{candidates} } ) {
        my $candidate2test = join '', sort map {lc} split //, $candidate;
        if ( lc( $input->{subject} ) ne lc($candidate)
            && $subject2test eq $candidate2test )
        {
            push @anagram, $candidate;
        }
    }

    return [@anagram];
} ## end sub match_anagrams

1;
