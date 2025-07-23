#include "hexadecimal.h"
#include <cmath>

namespace hexadecimal {

    int convert(std::string number) {
        int pos{};
        int dec{};
        for ( int i = number.length() - 1; i >= 0; i-- ) {
            if ( ! isxdigit(number[i]) ) { return 0; }
            int subt{};
            if      ( isdigit(number[i]) ) { subt = 48; }
            else if ( islower(number[i]) ) { subt = 87; }
            else                           { subt = 55; }
            int digit = number[i] - subt;
            dec += digit * pow(16, pos++);
        }
        return dec;
    }

}  // namespace hexadecimal
