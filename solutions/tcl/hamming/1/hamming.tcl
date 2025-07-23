proc hammingDistance {left right} {
    set count 0
    set llen [string length $left]
    set rlen [string length $right]
    if { $llen != $rlen } {
        error "strands must be of equal length" 1
    }
    for {set i 0; set j 0 } {$i < $llen} {incr i; incr j} {
        set lchar [string range $left  $i $j]
        set rchar [string range $right $i $j]
        if { [string equal $lchar $rchar] == 0 } {
            incr count
        }
    }
    return $count
}
