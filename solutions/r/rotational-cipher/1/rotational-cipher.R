rotate <- function(text, key) {
    chars <- unlist(strsplit(text, ''))
    for ( i in 1:length(chars) ) {
        if ( grepl("[[:alpha:]]", chars[i]) ) {
            index <- unlist(
                lapply(
                (which( letters == tolower(chars[i]) ) + key),
                function(c){if(c>length(letters)) c - length(letters) else c}
                )
            )
            char <- letters[index]
            if ( grepl("[[:upper:]]", chars[i]) ) {
                char <- toupper(char)
            }
            chars[i] <- char
        }
    }
    paste(chars, collapse='')
}
