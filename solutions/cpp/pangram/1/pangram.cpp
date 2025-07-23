#include "pangram.h"

namespace pangram {

    bool is_pangram(std::string phrase) {
        if ( phrase == "" ) { return false; }

        for ( std::string::size_type i = 0; i < phrase.size(); i++ ) {
            phrase[i] = tolower(phrase[i]);
        }

        std::string alpha = "abcdefghijklmnopqrstuvwxyz";
        std::string::size_type count = 0;
        for ( std::string::size_type i = 0; i < alpha.size(); i++ ) {
            if ( phrase.find(alpha[i]) != std::string::npos ) { count++; }
        }
        bool answer = false;
        if ( count == alpha.size() ) { answer = true; }

        return answer;
    }

}  // namespace pangram
