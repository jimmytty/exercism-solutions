# These variables are initialized on the command line (using '-v'):
# - distance

BEGIN {

    lower = "abcdefghijklmnopqrstuvwxyz"
    upper = toupper(lower)

    FS=""
    getline

    cipher = ""
    for ( i = 1; i <= NF; i++ ) {
        c = $i
        idx = index(lower, c)
        if ( idx > 0 ) {
            idx += distance
            if ( idx > 26 ) idx %= 26
            c = substr(lower, idx, 1)
        } else {
            idx = index(upper, c)
            if ( idx > 0 ) c = substr(upper, (idx + distance) % 26, 1)
        }
        cipher = cipher c
    }

    print cipher

}
