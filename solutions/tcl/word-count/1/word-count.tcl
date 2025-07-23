proc countWords {sentence} {
    set counts [dict create]
    set string [string tolower $sentence]
    set string [regsub -all -nocase {([a-z])'([a-z])} $string {\1_\2}]
    set string [regsub -all {[^0-9a-z_]+} $string { }]
    set string [string map { _ ' } $string ]
    set string [string trim $string]
    foreach word [split $string " "] {
        dict incr counts $word 1
    }
    return $counts
}
