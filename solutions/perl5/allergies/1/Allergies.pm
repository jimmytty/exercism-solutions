package Allergies;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<allergic_to list_allergies>;

sub allergic_to {
    my ($input) = @_;
    my %list = map { $_ => 1 } @{ list_allergies( $input->{score} ) };
    return exists $list{ $input->{item} } ? 1 : 0;
}

sub list_allergies {
    my ($score) = @_;

    my %item = (
        eggs         => 1,
        peanuts      => 2,
        shellfish    => 4,
        strawberries => 8,
        tomatoes     => 16,
        chocolate    => 32,
        pollen       => 64,
        cats         => 128,
    );
    my %score = map  { $item{$_} => $_ } keys %item;
    my @score = sort { $a <=> $b } values %item;

    my @bit = split //, sprintf '%08b', $score;
    shift @bit while $#bit > 7;
    @bit = reverse @bit;

    my @number;
    for ( my $i = 0; $i <= $#score; $i++ ) {
        push @number, $score[$i] if $bit[$i] == 1;
    }

    my @item = @score{@number};
    return [@item];
} ## end sub list_allergies

1;
