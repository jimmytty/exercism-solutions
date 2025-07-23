score <- function(x, y) {
    radius <- c( 1, 5, 10 )
    points <- rev(radius)
    result <- 0
    for ( i in seq_along(radius) ) {
        r <- radius[i]
        p <- points[i]
        if ( sum(c(x,y)^2) <= r ^ 2 ) {
            result <- p ;
            break;
        }
    }
    result
}
