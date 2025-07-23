unit module ArmstrongNumbers;

sub is-armstrong-number ($number) is export {
    my $len = $number == 0 ?? 1 !! ($number.log10 + 1).int;
    my $sum = 0;
    my $n = $number;
    my Int $d;
    while ( $n > 0 ) {
        ($d, $n) = $n.polymod(10);
        $sum += $d ** $len;
    }
    return $sum == $number;
}
