package Accumulate;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<accumulate>;

sub accumulate {
    my ( $list, $func ) = @_;

    my @accumulate = map { $func->($_) } @$list;

    return [@accumulate];
}

1;
