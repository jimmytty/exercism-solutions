BEGIN {
    getline; lena = split($0, a, "")
    getline; lenb = split($0, b, "")

    if ( lena != lenb ) {
        print "strands must be of equal length" > "/dev/stderr"
        exit 1
    }

    count = 0
    for ( i = 1; i <= lena; i++ ) {
        if ( a[i] != b[i] ) count++
    }

    print count
}
