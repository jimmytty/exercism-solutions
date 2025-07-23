namespace eval resistorColor {

    set map { black brown red orange yellow green blue violet grey white }

    proc colorCode {args} {
        variable map

        set colorName [lindex $args 0]
        set idx [lsearch -exact $map $colorName]

        if { [ string first "*" $colorName ] != -1 } {
            error "Invalid color: $colorName" 1
        } elseif { $idx == -1 } {
            error "Invalid color: $colorName" 1
        }

        return $idx
    }

    proc colors {args} {
        variable map
        return [join $map " "]
    }

}
