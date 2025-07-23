sieve <- function(limit) {
    is_prime <- c(0)
    if ( limit > 1 ) {
        is_prime <- append(is_prime, rep(-1, length(2:limit)))
        for ( n in 2:length(is_prime) ) {
            if ( is_prime[n] != -1 ) { next }
            is_prime[n] = 1
            m        <- n
            multiple <- n * m
            while ( multiple <= limit ) {
                is_prime[multiple] <- 0
                m <- m + 1
                multiple <- n * m
            }
        }
        which( 1 == is_prime )
    }
}
