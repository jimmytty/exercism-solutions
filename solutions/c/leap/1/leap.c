#include "leap.h"

bool leap_year(int year) {
    bool is_leap = 0;
    if ( year % 100 == 0 ) {
        if ( year % 400 == 0 ) {
            is_leap = 1;
        }
    } else if ( year % 4 == 0 ) {
        is_leap = 1;
    }
    return is_leap;
}
