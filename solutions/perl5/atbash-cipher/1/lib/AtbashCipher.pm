package AtbashCipher;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<encode_atbash decode_atbash>;

my @alpha = 'a' .. 'z';

sub _get_idx ( $char ) {
    for ( my $i = 0; $i <= $#alpha; $i++ ) {
        return $i if $char eq $alpha[$i];
    }
}

sub encode_atbash ($phrase) {
    my @string = split //, lc $phrase =~ s/[[:punct:][:blank:]]+//gr;

    my $encode = '';
    foreach my $char (@string) {
        $encode .= $char and next if $char =~ /[^a-z]/;
        my $idx = _get_idx $char;
        $encode .= $alpha[ $#alpha - $idx ];
    }
    $encode =~ s{.{5}(?:(?!$))}{$& }g;

    return $encode;
} ## end sub encode_atbash

sub decode_atbash ($phrase) {
    my @string = split //, $phrase =~ tr/ //dr;
    my $decode;
    foreach my $char ( @string ) {
        $decode .= $char and next if $char =~ /[^a-z]/;
        my $idx = _get_idx $char;
        $decode .= $alpha[ - ($idx + 1) ];
    }
    return $decode;
}

1;
