#include "reverse_string.h"

namespace reverse_string {

    string reverse_string(string word) {
        string reversed_string = word;
        if ( word.length() == 0 ) {
            reversed_string = "";
        }
        else {
            int k = word.length() - 1;
            int j = k;
            for ( int i = 0; i <= k; i++) {
                reversed_string[i] = word[j];
                j--;
            }
        }

        return reversed_string;
    }
    
}  // namespace reverse_string
