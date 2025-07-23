package DifferenceOfSquares;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK
    = qw<square_of_sum sum_of_squares difference_of_squares>;

sub square_of_sum {
    my ($number) = @_;
    my $sum = 0;
    $sum += $_ for 1 .. $number;
    $sum *= $sum;
    return $sum;
}

sub sum_of_squares {
    my ($number) = @_;
    my $sum = 0;
    $sum += $_ * $_ for 1 .. $number;
    return $sum;
}

sub difference_of_squares {
    my ($number) = @_;
    return square_of_sum($number) - sum_of_squares($number);
}

1;
