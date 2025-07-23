namespace eval ::resistorColor {
    proc value {args} {
        set c2n [dict create black 0 brown 1 red 2 orange 3 yellow 4 \
                     green 5 blue 6 violet 7 grey 8 white 9 ]
        lassign [lrange $args 0 1] c1 c2
        if { (! [dict exists $c2n $c1]) || (! [dict exists $c2n $c2] ) } {
            error "Invalid color"
        }
        set v1 [dict get $c2n $c1]
        set v2 [dict get $c2n $c2]
        set value [expr $v1 * 10 + $v2]
        return $value
    }
}
