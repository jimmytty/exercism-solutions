class ArmstrongNumber {

    static isArmstrongNumber(number) {
        def n   = number
        def len = number == 0 ? 1 : (int) Math.floor(Math.log10(number) + 1);
        def sum = 0;
        while ( n > 0 ) {
            sum += (n % 10) ** len
            n = (int) Math.floor(n / 10)
        }
        return sum == number
    }

}
