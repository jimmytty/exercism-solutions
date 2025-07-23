fizz_buzz <- function(n) {
    unlist(
        lapply(
            seq_len(n),
            function(n) {
                s <- c(if(!n%%3)"Fizz", if(!n%%5)"Buzz")
                if ( length(s) == 0 ) sprintf('%d', n)
                else paste(s, collapse=' ')
            }
        )
    )
}
