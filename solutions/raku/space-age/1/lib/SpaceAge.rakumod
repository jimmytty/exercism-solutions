unit module SpaceAge;

constant %planets = (
    :Mercury(0.2408467),
    :Venus(0.61519726),
    :Earth(1),
    :Mars(1.8808158),
    :Jupiter(11.862615),
    :Saturn(29.447498),
    :Uranus(84.016846),
    :Neptune(164.79132),
);

constant $earth-year-seconds = 31557600;

sub age-on ( :$planet, :$seconds ) is export {
    if not %planets{$planet}:exists {
        die 'not a planet';
    }
    my $age = $seconds / $earth-year-seconds / %planets{$planet};
    return $age.round(0.01);
}
