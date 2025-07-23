proc scrabbleScore {word} {
    set string [string toupper $word]
    set counter 0
    for {set i 0} {$i < [string length $string]} {incr i} {
        set char [string range $string $i $i]
        if       { [string trim $char "AEIOULNRST"] == "" } {
            incr counter 1
        } elseif { [string trim $char "DG"]         == "" } {
            incr counter 2
        } elseif { [string trim $char "BCMP"]       == "" } {
            incr counter 3
        } elseif { [string trim $char "FHVWY"]      == "" } {
            incr counter 4
        } elseif { [string trim $char "K"]          == "" } {
            incr counter 5
        } elseif { [string trim $char "JX"]         == "" } {
            incr counter 8
        } elseif { [string trim $char "QZ"]         == "" } {
            incr counter 10
        }
    }
    return $counter
}
