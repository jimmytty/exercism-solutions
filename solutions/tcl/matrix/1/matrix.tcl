proc matrixFrom {inputString} {
    set matrix {}
    set i 0
    foreach row [split $inputString "\n"] {
        set j 0
        foreach column [split $row " "] {
            lset matrix $i $j $column
            incr j
        }
        incr i
    }
    return $matrix
}

proc row {matrix n} {
    lindex $matrix [expr $n - 1]
}

proc column {matrix n} {
    set col {}
    foreach row [lrange $matrix 0 [expr [llength $matrix]]] {
        lset col [llength $col] [lindex $row [expr $n - 1]]
    }
    return $col
}
