unit module ETL;

sub transform (%input) is export {
    my Int:D %output{Str:D};
    for %input.kv -> $score, @letter {
        for @letter -> $letter {
            %output{$letter.lc} = $score;
        }
    }
    return %output;
}
