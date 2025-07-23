BEGIN {
    FS=""
    getline
    $0 = toupper($0)
    score = 0
    for ( i = 1; i <= NF; i++ ) {
        if ( $i ~ /[AEIOULNRST]/ ) sum +=  1
        else if ( $i ~ /[DG]/    ) sum +=  2
        else if ( $i ~ /[BCMP]/  ) sum +=  3
        else if ( $i ~ /[FHVWY]/ ) sum +=  4
        else if ( $i ~ /[K]/     ) sum +=  5
        else if ( $i ~ /[JX]/    ) sum +=  8
        else if ( $i ~ /[QZ]/    ) sum += 10
    }
    printf "%s,%d", $0, sum
}
