BEGIN {
    getline number
    if ( number < 1 ) {
        print "Error: Only positive numbers are allowed" > "/dev/stderr"
        exit 1
    }
    steps = 0
    while ( number > 1 ) {
        steps++
        number = (number % 2) == 0 ? number / 2 : number * 3 + 1
    }
    print steps
}
