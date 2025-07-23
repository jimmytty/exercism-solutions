BEGIN {
    getline
    year = $0
    is_leap = "false"
    if ( year % 100 == 0 ) {
        if ( year % 400 == 0 )  is_leap = "true"
    } else if ( year % 4 == 0 ) is_leap = "true"
    print is_leap
}
