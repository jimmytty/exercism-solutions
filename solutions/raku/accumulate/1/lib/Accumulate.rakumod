unit module Accumulate;

sub accumulate ( @list, &function ) is export {
    my @acc = ();
    for @list {
        my $r = &function($_);
        @acc.push($r);
    }
    return @acc.List;
}
