proc abbreviate {phrase} {
    set acronym {}
    foreach word  [ split $phrase " _-" ] {
        set firstChar [ string toupper [ string index $word 0 ] ]
        lappend acronym $firstChar
    }
    return [ join $acronym "" ]
}
