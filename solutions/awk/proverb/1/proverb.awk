BEGIN {
    getline

    if ( NF == 0 ) { print ""; exit 0; }

    for ( i = 1; i < NF; i++ ) {
        printf "For want of a %s the %s was lost.\n", $i, $(i+1)
    }

    printf "And all for the want of a %s.", $1
}
