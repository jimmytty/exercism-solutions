package Hamming;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<hamming_distance>;

sub hamming_distance {
    my ( $strand1, $strand2 ) = @_;

    if ( length($strand1) != length($strand2) ) {
        die 'left and right strands must be of equal length';
    }

    my $strands = [ map { [ split // ] } $strand1, $strand2 ];
    my $distance = 0;
    for ( my $i = 0; $i <= $#{$strands->[0]}; $i++ ) {
        $distance++ if $strands->[0][$i] ne $strands->[1][$i];
    }

    return $distance;
}

1;
