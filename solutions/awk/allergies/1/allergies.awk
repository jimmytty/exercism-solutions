function make_list (score) {
    delete list
    i = 0
    list[++i] = "eggs"
    list[++i] = "peanuts"
    list[++i] = "shellfish"
    list[++i] = "strawberries"
    list[++i] = "tomatoes"
    list[++i] = "chocolate"
    list[++i] = "pollen"
    list[++i] = "cats"

    scr = score % 256
    for ( i = length(list); i >= 1; i-- ) {
        value = 2 ^ (i-1)
        if ( scr >= value ) scr -= value
        else delete list[i]
    }

    return 1
}

BEGIN {
    FS = ","
}

{ make_list($1) }

$2 == "allergic_to" {
    bool = "false"
    for ( i in list ) if ( $3 == list[i] ) bool = "true"
    print bool
    exit
}

$2 == "list" {
    string = ""
    for ( i in list ) string = string "," list[i]
    string = substr(string, 2)
    print string
    exit
}
