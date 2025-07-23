BEGIN {
    FS=","
    getline

    input   = $1
    span    = $2

    if ( span > length(input) ) {
        print "span must be smaller than string length" > "/dev/stderr"
        exit 1
    }

    if ( input ~ /[^0-9]/ ) {
        print "input must only contain digits" > "/dev/stderr"
        exit 1
    }

    if ( span < 0 ) {
        print "span must not be negative" > "/dev/stderr"
        exit 1
    }

    idx     = 0
    largest = -1
    len     = split(input, digits, "")

    while ( idx++ + span <= len ) {
        product = 1
        for ( i = idx; i <= idx + span - 1; i++ ) product *= digits[i]
        if ( product > largest ) largest = product
    }

    print largest
}
