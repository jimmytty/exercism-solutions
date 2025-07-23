package Gigasecond;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<add_gigasecond>;

use Time::Piece;

sub add_gigasecond ($time) {
    my $format = '%Y-%m-%d';
    $format .= 'T%H:%M:%S' if -1 != index $time, 'T';
    my $seconds = Time::Piece->strptime( $time, $format )->epoch + 1e9;
    my $dt      = gmtime($seconds);
    return $dt->datetime;
}

1;
