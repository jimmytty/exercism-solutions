BEGIN {
    dict["G"] = "C"
    dict["C"] = "G"
    dict["T"] = "A"
    dict["A"] = "U"
    rna = ""
    FS=""
    getline
    for (i = 1; i <= NF; i++ ) {
        if ( ! ($i in dict) ) {
            print "Invalid nucleotide detected." > "/dev/stderr"
            exit 1
        }
        rna = rna dict[$i]
    }
    print rna
}
