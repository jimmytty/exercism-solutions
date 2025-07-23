package AllYourBase;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<rebase>;

sub rebase {
    my ($input) = @_;

    if ( $input->{inputBase} < 2 ) {
        die error => 'input base must be >= 2';
    }

    if ( $input->{outputBase} < 2 ) {
        die error => 'output base must be >= 2';
    }

    if ( grep { $_ < 0 || $_ >= $input->{inputBase} } @{ $input->{digits} } )
    {
        die error => 'all digits must satisfy 0 <= d < input base';
    }

    if ( @{ $input->{digits} } == grep { $_ == 0 } @{ $input->{digits} } ) {
        return [0];
    }

    my $digits = [];
    if ( $input->{outputBase} == 10 ) {
        $digits = _rebase_to_10($input);
    }
    elsif ( $input->{inputBase} == 10 ) {
        $digits = _rebase_10_to_n($input);
    }
    else {
        my $base_10_digits = _rebase_to_10(
            {   digits     => $input->{digits},
                inputBase  => $input->{inputBase},
                outputBase => 10,
            }
        );
        $digits = _rebase_10_to_n(
            {   digits     => $base_10_digits,
                inputBase  => 10,
                outputBase => $input->{outputBase},
            }
        );
    }

    return $digits;
} ## end sub rebase

sub _rebase_to_10 {
    my ($input) = @_;

    my $base_10 = 0;
    for (
        my $i = 0, my $j = $#{ $input->{digits} };
        $i <= $#{ $input->{digits} };
        $i++, $j--
        )
    {
        $base_10 += $input->{digits}[$i] * $input->{inputBase}**$j;
    }

    my $digits = [ split //, $base_10 ];

    return $digits;
} ## end sub _rebase_to_10

sub _rebase_10_to_n {
    my ($input) = @_;

    my $base_10 = join '', @{ $input->{digits} };
    my $digits  = [];
    while (1) {
        my $result    = int( $base_10 / $input->{outputBase} );
        my $remainder = $base_10 % $input->{outputBase};
        push @$digits, $remainder;
        last if $base_10 == 0;
        $base_10 = $result;
    }

    @{$digits} = reverse @{$digits};

    shift @{$digits} if $digits->[0] == 0;

    return $digits;
} ## end sub _rebase_10_to_n

1;
