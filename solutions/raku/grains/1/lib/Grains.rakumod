unit module Grains;

sub grains-on-square ($number) is export {
    if ( not 1 <= $number <= 64 ) {
        die 'square must be between 1 and 64';
    }
    my $grains = 1;
    loop ( my $i = 2; $i <= $number; $i++ ) {
        $grains += $grains;
    }
    return $grains;
}

sub total-grains is export {
    my $total = 0;
    $total += grains-on-square($_) for 1 .. 64;
    return $total;
}
