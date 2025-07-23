#include "isogram.h"

bool is_isogram(const char phrase[]) {

    bool b;

    if      ( phrase    == NULL ) { b = false; }
    else if ( phrase[0] == '\0' ) { b = true;  }
    else {
        int size = 0; while ( phrase[size] != '\0' ) size++;
        char c[255] = {0};
        b = true;
        for ( int i = 0; i < size; i++ ) {
            if (phrase[i] != 32 && phrase[i] != 45 && phrase[i] != 46 ) {
                int ascii = tolower(phrase[i]);
                c[ascii]++;
                if ( c[ascii] > 1 ) {
                    b = false;
                    break;
                }
            }
        }
    }

    return b;
}
