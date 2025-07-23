proc slices {series length} {
    set slen [string length $series]
    if { $slen == 0 } {
        error "series cannot be empty"
    } elseif { $slen < $length } {
        error "slice length cannot be greater than series length" 1
    }
    if { $length == 0 } {
        error "slice length cannot be less than one"
    } elseif { $length < 0 } {
        error "slice length cannot be less than one"
    }
    
    set sets {}
    set l [expr $length - 1]
    for {
        set i 0; set j $l
    } {
       $i < [expr $slen - $l]
    } {
        incr i; incr j
    } {
        lset sets [llength $sets] [string range $series $i $j]
    }
    return $sets
}
