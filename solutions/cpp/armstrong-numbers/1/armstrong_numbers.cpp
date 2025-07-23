#include "armstrong_numbers.h"

namespace armstrong_numbers {
    bool is_armstrong_number(int number) {
        int n{number};
        int l{};
        int d{};
        int sum{};

        if ( number == 0 ) { l = 1; }
        else { l = floor(log10(number) + 1); }

        while ( n > 0 ) {
            d = n % 10;
            n = n / 10;
            sum += pow(d, l);
        }

        return number == sum;
    }
}  // namespace armstrong_numbers
