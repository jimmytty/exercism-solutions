unit module CryptoSquare;

sub crypto-square ($text) is export {
    my $normalized = $text.lc.subst(/<-[0..9a..z]>/, :global);

    return '' if $normalized.chars == 0;

    my $length     = $normalized.chars;
    my $cols       = $length.sqrt.ceiling;
    my $rows       = ($length / $cols).ceiling;
    my @chunk      = $normalized.comb($cols);
    @chunk[*-1]    = (@chunk[*-1] ~ ' ' x $cols).substr(0, $cols);
    my @rectangle  = @chunk.map({.comb});

    my @encoded;
    my ($c, $r) = (0,0);
    while ( $c < $cols ) {
        @encoded[$c][$r] = @rectangle[$r][$c];
        $r++;
        if $r == $rows { $r = 0; $c++ }
    }

    my $encoded = @encoded.map({.join}).join(' ');
    return $encoded;
}
