parse_phone_number <- function(number_string) {
    number <- gsub('[^0-9]+', '', number_string)
    len <- nchar(number)

    if ( len < 10 || len > 11 ) return (NULL)

    if ( len == 11 ) {
        country_code <- substr(number, 1, 1)
        if ( country_code != "1" ) return(NULL)
        number <- substr(number, 2, len)
    }

    if ( as.numeric(substr(number, 1, 1)) < 2 ) return(NULL)
    if ( as.numeric(substr(number, 4, 4)) < 2 ) return(NULL)

    number
}
