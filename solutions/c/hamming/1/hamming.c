#include "hamming.h"

int compute(const char *lhs, const char *rhs) {
    int distance = 0;
    int lhs_len = strlen(lhs);
    int rhs_len = strlen(rhs);

    if ( lhs_len != rhs_len ) return -1;

    for ( int i = 0; i < lhs_len; i++ ) {
        if ( lhs[i] != rhs[i] ) distance++;            
    }

    return distance;
}
