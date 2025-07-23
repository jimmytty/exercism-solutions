two_fer <- function(input) {
    name <- if ( missing(input) ) 'you' else name = input
    sprintf('One for %s, one for me.', name)
}
