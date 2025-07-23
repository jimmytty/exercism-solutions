proc raindrops {number} {
    set sounds ""
    if { [expr $number % 3] == 0 } { set sounds ${sounds}Pling }
    if { [expr $number % 5] == 0 } { set sounds ${sounds}Plang }
    if { [expr $number % 7] == 0 } { set sounds ${sounds}Plong }
    if { $sounds == "" } { set sounds $number }
    return $sounds
}
