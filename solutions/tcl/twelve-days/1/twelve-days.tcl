proc verse {n} {
    sing $n $n
}

proc sing {from to} {
    set subs {
        { first "a Partridge in a Pear Tree." }
        { second "two Turtle Doves, and" }
        { third "three French Hens," }
        { fourth "four Calling Birds," }
        { fifth "five Gold Rings," }
        { sixth "six Geese-a-Laying," }
        { seventh "seven Swans-a-Swimming," }
        { eighth "eight Maids-a-Milking," }
        { ninth "nine Ladies Dancing," }
        { tenth "ten Lords-a-Leaping," }
        { eleventh "eleven Pipers Piping," }
        { twelfth "twelve Drummers Drumming," }
    }
    set song {}

    for {set i 0} {$i < [llength $subs]} {incr i} {
        set preVerse ""
        if { $i == 0 } {
            set preVerse "On the 0 day of Christmas my true love gave to me: "
        } else {
            set preVerse [lindex $song [expr $i - 1]]
        }

        set parts \
            [ regexp \
                  -all \
                  -inline \
                  {^(On the) ([^ ]+) ([^:]+:) (.*)$} \
                  $preVerse \
                 ]
        lassign [lindex $subs $i] ord txt
        set parts [lreplace $parts 0 0]
        lset parts 1 $ord
        set parts [linsert $parts end-1 $txt]
        set curVerse [join $parts " "]
        set curVerse [string trim $curVerse]
        lappend song $curVerse
    }
    set i [expr $from - 1]
    set j [expr $to - 1]
    join [lrange $song $i $j] "\n"
}
