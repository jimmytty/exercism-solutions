BEGIN {
    FS=""
    getline
    for ( i = NF; i >= 1; i-- ) {
        printf "%c", $i
    }
}
