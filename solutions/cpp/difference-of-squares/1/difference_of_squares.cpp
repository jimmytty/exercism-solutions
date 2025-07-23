#include "difference_of_squares.h"

namespace difference_of_squares {

    int square_of_sum(int number) {
        int result{};
        for ( int i = 1; i <= number; i++ ) {
            result += i;
        }
        result *= result;
        return result;
    }

    int sum_of_squares(int number){
        int result{};
        for ( int i = 1; i <= number; i++ ) {
            result += i * i;
        }
        return result;
    }

    int difference(int number) {
        return square_of_sum(number) - sum_of_squares(number);
    }

}  // namespace difference_of_squares
