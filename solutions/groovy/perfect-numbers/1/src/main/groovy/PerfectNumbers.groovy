class PerfectNumbers {

    static Classification classify(int num) {
        if ( num <= 0 ) throw new ArithmeticException()

        def sum = 0
        for ( int i = 1; i <= num.intdiv(2); i++ ) {
            if ( num % i == 0 ) sum += i
        }

        def classification = [
            (-1): Classification.DEFICIENT,
            (0) : Classification.PERFECT  ,
            (1) : Classification.ABUNDANT ,
        ]

        return classification.get( sum <=> num )
    }

}
