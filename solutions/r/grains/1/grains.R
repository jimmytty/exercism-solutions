square <- function(n) {
    if ( n < 1 || n > 64 ) { stop("") }
    s <- 1
    for ( i in seq_len(n - 1) ) { s <- s * 2 }
    s
}

total <- function() {
    square(64) * 2
}
