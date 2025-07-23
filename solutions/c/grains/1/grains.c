#include "grains.h"

uint64_t square(uint8_t index) {
    uint64_t grains = 0;

    if ( index <  1 ) return 0;
    if ( index > 64 ) return 0;

    for ( int i = 1; i <= index; i++ ) {
        grains = ( i == 1 ) ? 1 : grains * 2;
    }

    return grains;
}

uint64_t total(void) {
    uint64_t sum = 0;
    for ( uint8_t i = 1; i <= 64; i++ ) sum += square(i);
    return sum;
}
