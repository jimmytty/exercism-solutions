BEGIN {
    getline
    printf "One for %s, one for me.", $0 == "" ? "you" : $0
}
