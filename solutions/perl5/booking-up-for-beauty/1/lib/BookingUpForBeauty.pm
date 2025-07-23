package BookingUpForBeauty;

use v5.40;

use Time::Piece;
use Const::Fast;

use Exporter ('import');
our @EXPORT_OK = (
    'appointment_has_passed',
    'is_afternoon_appointment', 'describe_appointment'
);

my $STRPTIME_FORMAT = '%Y-%m-%d' . 'T' . '%H:%M:%S';
const $STRPTIME_FORMAT => $STRPTIME_FORMAT;

sub _parse_datetime ($date_string) {
    return Time::Piece->strptime( $date_string, $STRPTIME_FORMAT );
}

sub appointment_has_passed ($date_string) {
    my $time = _parse_datetime($date_string);
    return time > $time->epoch;
}

sub is_afternoon_appointment ($date_string) {
    my $time = _parse_datetime($date_string);
    my $hm   = $time->strftime('%H%M');
    return $hm >= 1200 && $hm < 1800;
}

sub describe_appointment ($date_string) {
    my $time   = _parse_datetime($date_string);
    my $year   = $time->year;
    my $month  = $time->mon;
    my $day    = $time->mday;
    my $hour   = $time->hour;
    my $period = 'AM';
    if ( $hour > 12 ) {
        $hour -= 12;
        $period = 'PM';
    }
    $hour ||= 12;
    my $minute = $time->minute;

    return sprintf( 'You have an appointment on %02d/%02d/%04d %d:%02d %s',
        $month, $day, $year, $hour, $minute, $period );
} ## end sub describe_appointment

1;
