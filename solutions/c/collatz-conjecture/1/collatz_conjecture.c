#include "collatz_conjecture.h"

int steps(int start) {
    if ( start < 1 ) { return ERROR_VALUE; }

    int count  = 0;
    int number = start;

    while ( number > 1 ) {
        count++;
        number = ((number & 1) == 0) ? number / 2 : 3 * number + 1;
    }

    return count;
}
