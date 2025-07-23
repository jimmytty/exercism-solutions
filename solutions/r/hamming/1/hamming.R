hamming <- function(strand1, strand2) {
    if ( nchar(strand1) != nchar(strand2) ) { stop() }
    length( which(strsplit(strand1, "")[[1]] != strsplit(strand2, "")[[1]]))
}
