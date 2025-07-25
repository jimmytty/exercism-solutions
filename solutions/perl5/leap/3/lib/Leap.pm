# Declare package 'Leap'
package Leap;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<is_leap_year>;

sub is_leap_year ($year) {
    my $bool = $year % 400 == 0 || ( $year % 100 != 0 && $year % 4 == 0 );
    return $bool;
}

1;
