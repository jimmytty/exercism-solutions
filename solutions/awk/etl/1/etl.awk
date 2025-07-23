BEGIN {
    FS="[ \t:,\"]+"
    split("", map)
}

{
    for ( i = 2; i <= NF; i++ ) {
        if ( $i == "" ) continue
        map[tolower($i)] = $1
    }
}

END {
    n = asorti(map, letters)
    for ( i = 1; i <= n; i++ ) {
        print letters[i] "," map[letters[i]]
    }
}
