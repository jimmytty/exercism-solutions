unit module Hamming;

sub hamming-distance ( $strand1, $strand2 ) is export {
    if $strand1.chars != $strand2.chars {
        fail 'strands must be of equal length';
    }
    my str @strand1 = $strand1.comb;
    my str @strand2 = $strand2.comb;
    my int $diff = 0;
    loop (my int $i = 0; $i <= @strand1.end; $i++) {
        $diff++ if @strand1[$i] ne @strand2[$i];
    }
    return $diff;
}
