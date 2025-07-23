unit module Acronym;

grammar PHRASE {
    token TOP    { <phrase>                }
    token phrase { <word> [ <ws> <word> ]* }
    token word   { <fc><chars>?            }
    token fc     { <[ A..Z a..z ]>         }
    token chars  { <[ 0..9 A..Z a..z ']>+  }
    token ws     { <[ \s _ , - ]>+         }
}

sub abbreviate ($phrase) is export {
    my $parse   = PHRASE.parse($phrase);
    my $acronym = $parse.<phrase>.<word>.map( *.<fc> ).join('').uc;
    return $acronym;
}
