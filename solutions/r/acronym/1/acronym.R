acronym <- function(input) {
    string     <- input
    string     <- gsub("'", "", string)
    string     <- gsub("[^[:alpha:]]+", " ", string)
    words      <- unlist(strsplit(string, "\\s"))
    first_char <- function(word) { substr(word, 1, 1) }
    toupper(paste(unlist(lapply(words, first_char)), collapse = ''))
}
