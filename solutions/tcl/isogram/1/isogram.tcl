proc isIsogram {input} {
    set dict [dict create]
    set bool true
    for {set i 0} {$i < [string length $input]} {incr i} {
        set char [string tolower [string range $input $i $i]]
        if { ! [string is alpha $char] } { continue }
        if { [ dict exists $dict $char] == 1 } {
            set bool false
            break
        }
        dict incr dict $char 1
    }
    return $bool
}
