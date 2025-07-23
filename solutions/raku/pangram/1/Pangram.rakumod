unit module Pangram;

sub is-pangram ($string) is export {
    my %ascii = ('a'..'z').list.map: { $_.lc => 0 };
    $string.lc.comb.map: { %ascii{$_}:delete };
    return !%ascii;
}
