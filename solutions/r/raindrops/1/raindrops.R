raindrops <- function(number) {
    map <- list( list(3, "Pling"), list(5, "Plang"), list(7, "Plong") )
    sounds <- c()
    for ( n in c(1:length(map)) ) {
        factor <- map[[n]][[1]]
        sound  <- map[[n]][[2]]
        if ( number %% factor == 0 ) {
            sounds[ length(sounds) + 1 ] <- sound
         }
    }
    if ( length(sounds) == 0 ) {
        sounds <- number
    }

    paste( sounds, collapse='' )
}
