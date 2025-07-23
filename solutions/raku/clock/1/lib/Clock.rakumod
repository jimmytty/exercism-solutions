unit class Clock;

has $.hour;
has $.minute;

method normalize_clock {
    my $hours   = ($!hour == 0 ?? 24 !! $!hour) % 24;
    my $minutes = $!minute + $hours * 60;

    $hours   = (($minutes / 60) % 24).int;
    $minutes = $minutes % 60;

    $!hour   = $hours;
    $!minute = $minutes;

    return 1;
}

method time {
    sprintf('%02d:%02d', $.hour, $.minute);
}

method add (:$minutes --> Clock) {
    $!minute = $!minute + $minutes;
    self.normalize_clock();
    return self;
}

method subtract (:$minutes --> Clock) {
    $!minute = $!minute - $minutes;
    self.normalize_clock();
    return self;
}

submethod TWEAK {
    self.normalize_clock();
}
