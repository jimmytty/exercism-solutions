handshake <- function(n) {
    actions <- c(
        "wink",
        "double blink",
        "close your eyes",
        "jump"
    )
    bits <- as.integer(intToBits(n))[1:5]
    if ( tail(bits, n=1) == 1 ) {
        bits    <- bits[1:length(bits) - 1]
        bits    <- rev(bits)
        actions <- rev(actions)
    }
    on <- which( 1 == bits )
    handshake <- actions[on]
    if ( length(handshake) != 0 ) handshake
}
