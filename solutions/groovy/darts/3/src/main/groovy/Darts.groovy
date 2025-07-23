class Darts {

    static int score(x, y) {
        def points = 0;
        def spot = x ** 2 + y ** 2;
        if      ( spot <=  1 ** 2 ) { points = 10 }
        else if ( spot <=  5 ** 2 ) { points =  5 }
        else if ( spot <= 10 ** 2 ) { points =  1 }
        return points
    }

}
