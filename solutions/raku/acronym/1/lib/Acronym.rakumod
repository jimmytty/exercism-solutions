unit module Acronym;

sub abbreviate ($phrase) is export {
    my $re = rx { <?after ( ^ | \s | _ | \- ) > <[A..Z a..z]> };
    return $phrase.comb($re).join('').uc;
}
