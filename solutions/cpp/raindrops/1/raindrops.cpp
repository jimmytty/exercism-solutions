#include "raindrops.h"

namespace raindrops {
    std::string convert(int number) {
        std::string sounds = "";
        if ( number % 3 == 0  ) sounds += "Pling";
        if ( number % 5 == 0  ) sounds += "Plang";
        if ( number % 7 == 0  ) sounds += "Plong";
        if ( sounds     == "" ) sounds = std::to_string(number);
        return sounds;
    }
}  // namespace raindrops
