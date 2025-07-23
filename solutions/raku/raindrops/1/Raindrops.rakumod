unit module Raindrops;

my %decoder = (
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong',
);

sub raindrop ($num) is export {
    my $answer = '';
    for %decoder.sort(*.key)>>.kv -> ($factor, $sound) {
        $answer ~= $sound if $num % $factor == 0;
    }
    $answer ~= $num if $answer eq '';
    return $answer;
}
