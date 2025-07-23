#include "trinary.h"

#include <cmath>

namespace trinary {

    int to_decimal(std::string number) {
        int pos{};
        int dec{};
        for ( int i = int(number.length()) - 1; i >= 0; i-- ) {
            if ( ! isdigit(number[i]) ) { return 0; }
            dec += ( number[i] - '0') * pow(3, pos++);
        }
        return dec;
    }
    
}  // namespace trinary
