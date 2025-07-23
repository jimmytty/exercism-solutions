unit module DifferenceOfSquares;

sub square-of-sum ($number) is export {
    return (1 .. $number).sum²;
}

sub sum-of-squares ($number) is export {
    return (1..$number).map({$_²}).sum;
}

sub difference-of-squares ($number) is export {
    return square-of-sum($number) - sum-of-squares($number);
}
