word_count <- function(input) {
    str <- tolower(input)
    str <- gsub("_", "", str)
    str <- gsub("([[:alpha:]])'([[:alpha:]])", "\\1_\\2", str)
    str <- gsub("([^[:alnum:]_]+)", " ", str)
    str <- gsub("_", "'", str)
    str <- trimws(str)
    words  <- unlist(strsplit(str, "\\s"))
    counts <- list()
    for ( i in 1:length(words) ) {
        counts[[ words[i] ]] <- sum( counts[[ words[i] ]], 1)
    }
    counts
}
