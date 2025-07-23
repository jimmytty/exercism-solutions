package PhoneNumber;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<clean_number>;

my @errors = (
    '11 digits must start with 1',             # 0
    'must not be greater than 11 digits',      # 1
    'must not be fewer than 10 digits',        # 2
    'letters not permitted',                   # 3
    'punctuations not permitted',              # 4
    'area code cannot start with zero',        # 5
    'area code cannot start with one',         # 6
    'exchange code cannot start with zero',    # 7
    'exchange code cannot start with one',     # 8
);

sub clean_number ($number) {
    die $errors[3] if $number =~ /[A-Za-z]/;
    die $errors[4] if $number =~ m{[\\@:!]};

    my $string = $number;
    $string =~ tr{0-9}{}cd;
    my $length = length $string;

    die $errors[2] if $length < 10;
    die $errors[1] if $length > 11;

    my $template = 'A3A3A4';
    $template = 'A1' . $template if $length == 11;
    my @parse = unpack $template, $string;

    if ( $#parse == 3 ) {
        my $country_code = shift @parse;
        die $errors[0] if $country_code != 1;
    }

    die $errors[5] if $parse[0] < 100;
    die $errors[6] if $parse[0] < 200;
    die $errors[7] if $parse[1] < 100;
    die $errors[8] if $parse[1] < 200;

    return join '', @parse;
} ## end sub clean_number

1;
