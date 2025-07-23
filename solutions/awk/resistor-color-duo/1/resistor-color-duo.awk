BEGIN {
    split("", colors)
    colors["black"]  = 0
    colors["brown"]  = 1
    colors["red"]    = 2
    colors["orange"] = 3
    colors["yellow"] = 4
    colors["green"]  = 5
    colors["blue"]   = 6
    colors["violet"] = 7
    colors["grey"]   = 8
    colors["white"]  = 9
}

!($1 in colors) || !($2 in colors) {
    print "invalid color" > "/dev/stderr"
    exit 1
}

{ print colors[$1] * 10 + colors[$2] }
