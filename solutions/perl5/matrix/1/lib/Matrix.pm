package Matrix;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<extract_row extract_column>;

sub _matrix($string) {
    my $matrix;
    my $i = 0;
    foreach my $row ( split /\n/, $string ) {
        my $j = 0;
        foreach my $element ( split /\s/, $row ) {
            $matrix->[$i][ $j++ ] = $element;
        }
        $i++;
    }
    return $matrix;
}

sub extract_row ( $matrix, $row ) {
    return _matrix($matrix)->[ $row - 1 ];
}

sub extract_column ( $matrix, $column ) {
    return [ map { $_->[ $column - 1 ] } @{ _matrix($matrix) } ];
}

1;
