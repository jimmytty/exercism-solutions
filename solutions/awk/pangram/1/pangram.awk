{
    split("", counter)
    c = split(tolower(gensub(/[^[:alpha:]]+/, "", "g", $0)), letters, "")
    for ( i in letters ) counter[letters[i]]++
    print length(counter) == 26 ? "true" : "false"
}
