anagram <- function(subject, candidates) {
    vector <- c()
    vec_subject <- strsplit(toupper(subject), "")[[1]]
    for ( candidate in candidates ) {
        if ( nchar(subject) == nchar(candidate)
            && toupper(subject) != toupper(candidate)
            && identical(
                   sort(vec_subject),
                   sort(strsplit(toupper(candidate), "")[[1]])
               )
            ) {
            vector <- append(vector, candidate)
        }
    }
    vector
}
