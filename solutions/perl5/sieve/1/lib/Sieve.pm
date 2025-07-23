package Sieve;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<find_primes>;

sub find_primes ($limit) {
    my @is_prime;
    $is_prime[$limit] = undef;

    for ( my $i = 2; $i <= $limit; $i++ ) {
        next if defined $is_prime[$i];
        $is_prime[$i] = true;
        my $j = 2;
        while (true) {
            my $multiple = $i * $j++;
            last if $multiple > $limit;
            $is_prime[$multiple] = false;
        }
    }

    my $primes = [];
    for ( my $i = 2; $i <= $limit; $i++ ) {
        push @$primes, $i if $is_prime[$i];
    }

    return $primes;
} ## end sub find_primes

1;
