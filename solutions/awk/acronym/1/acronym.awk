BEGIN {
    getline
    len = split($0, words, "[ _-]")
    acronym = ""
    for ( i = 1; i<= len; i++ ) {
        char = substr(words[i], 1, 1)
        acronym = acronym char
    }
    print toupper(acronym)
}
