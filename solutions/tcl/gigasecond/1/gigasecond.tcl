proc addGigasecond {datetime} {
    set Time [clock scan [string cat $datetime " +0"]]
    incr Time 1000000000
    clock format $Time -gmt 1 -format "%Y-%m-%dT%H:%M:%S"
}
