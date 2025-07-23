proc luhn {digits} {
    set string [string map {" " ""} $digits]
    if { ! [ string is digit $string] } { return false }
    set slen [string length $string]
    if { $slen < 2 } { return false }
    if { [expr $slen % 2] != 0 } {
        set string [string cat 0 $string];
        incr slen
    }
    set sum 0
    for {set i 0} {$i < $slen } {incr i} {
        set digit [string range $string $i $i]
        if { [expr $i % 2] == 0 } {
            incr sum [expr [join [split [expr $digit * 2] {}] +]]
        } else {
            incr sum $digit
        }
    }
    set bool false
    if { [expr $sum % 10] == 0 } { set bool true }
    return $bool
}

