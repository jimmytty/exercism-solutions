#include "rotational_cipher.h"

namespace rotational_cipher {
    std::string rotate(std::string text, int key) {
        std::string str{text};
        for ( int i = 0; i < int(str.length()); i++ ) {
            if ( ! isalpha(str[i]) ) { continue; }
            int min{};
            int max{};
            if (isupper(str[i])) {
                min = 65;
                max = 90;
            } else {
                min = 97;
                max = 122;
            }
            int idx = str[i] + key;
            if ( idx > max ) { idx -= max; idx += min; idx--; }
            str[i] = idx;
        }
        return str;
    }
}  // namespace rotational_cipher
