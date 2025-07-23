unit module CollatzConjecture;

sub collatz-conjecture ($number) is export {
    die 'negative value is an error' if $number <= -1;
    die 'zero is an error'           if $number ==  0;

    my $steps = 0;
    my $n = $number;
    while ( $n > 1 ) {
        $steps++;
        $n = $n % 2 == 0 ?? $n / 2 !! $n * 3 + 1;
    }

    return $steps;
}
