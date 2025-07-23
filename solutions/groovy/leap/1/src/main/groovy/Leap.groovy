class Leap {

    Integer year

    Leap(Integer year) {
        this.year = year
    }

    def isLeapYear() {
        def bool = false

        if ( year % 100 == 0 ) {
            if ( year % 400 == 0 ) { bool = true }
        } else if ( year % 4 == 0 ) { bool = true }

        return bool
    }

}
