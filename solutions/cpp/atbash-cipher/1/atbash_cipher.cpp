#include "atbash_cipher.h"
#include <algorithm>

namespace atbash_cipher {

    std::string convert(std::string text) {
        std::string str{text};
        str.erase(remove_if(str.begin(), str.end(), isspace), str.end());
        for ( int i = 0; i < int(str.length()); i++ ) {
            if ( ! isalpha(str[i]) ) { continue; }
            str[i] = abs(122 - str[i] + 97);
        }
        return str;
    }

    std::string encode(std::string text) {
        std::string str{text};
        str.erase(remove_if(str.begin(), str.end(), ispunct), str.end());
        for ( int i = 0; i < int(str.length()); i++ ) {
            if ( isupper(str[i]) ) { str[i] = tolower(str[i]); }
        }
        str = convert(str);

        int group_size = 5;
        if ( int(str.length()) > group_size ) {
            int last_idx = -1;
            while ( last_idx + group_size + 1 < int(str.length()) ) {
                last_idx += group_size + 1;
                str.insert(last_idx, " ");
            }
        }
        return str;
    }

    std::string decode(std::string text) {
        std::string str = convert(text);
        return str;
    }

}  // namespace atbash_cipher
