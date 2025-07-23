collatz_step_counter <- function(num) {
    unlist(
        lapply(
            num,
            function(n) {
                if ( n < 1 ) { stop("") }
                c <- 0
                while ( n > 1 ) {
                    n = if (n %% 2 == 0 ) n / 2 else n * 3 + 1
                    c <- c + 1
                }
                c
            }
        )
    )
}
