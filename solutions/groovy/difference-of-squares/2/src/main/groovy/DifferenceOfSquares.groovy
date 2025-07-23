class DifferenceOfSquares {

    int number;

    DifferenceOfSquares(num) {
        this.number = num;
    }

    def squareOfSum() {
        return (number * (number + 1) / 2) ** 2;
    }

    def sumOfSquares() {
        return number * (number + 1) * (2 * number + 1) / 6;
    }

    def difference() {
        return squareOfSum() - sumOfSquares();
    }

}
