#! tclsh

oo::class create HighScores {

    variable records

    constructor {} {
        set records ""
    }

    method addScores {args} {
        if { $records == "" } {
            set records $args
        } else {
            set records [join [list [split $records " "] [split $args " "]] " "]
        }
    }

    method scores {} {
        return $records
    }

    method latest {} {
        lindex [split $records " "] end
    }

    method personalBest {} {
        lindex [lsort -integer [split $records " "]] end
    }

    method topThree {} {
        lrange [lsort -integer -decreasing [split $records " "]] 0 2
    }
}
