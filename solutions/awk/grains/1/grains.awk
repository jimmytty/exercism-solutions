function grains (n) {
    c = 1
    for ( i = 1; i < n; i++ ) c += c
    return c
}

$0 ~ /^[+-]?[0-9]+$/ && ($0 < 1 || $0 > 64) {
    print "square must be between 1 and 64" > "/dev/stderr"
    exit 1
}

/total/ {
    print grains(64) * 2 - 1
    exit 0
}

{ print grains($0) }
