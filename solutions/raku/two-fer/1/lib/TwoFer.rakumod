unit module TwoFer;

sub two-fer ($name?) is export {
    my $person     = defined($name) ?? $name !! 'you';
    my $i-will-say = "One for $person, one for me.";
    return $i-will-say;
}
