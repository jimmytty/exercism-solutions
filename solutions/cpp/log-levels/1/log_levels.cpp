#include <string>

namespace log_line {
    std::string message(std::string line) {
        std::string sstr = ": ";
        int idx          = line.find(sstr) + sstr.length();
        std::string msg  = line.substr(idx);
        return msg;
    }

    std::string log_level(std::string line) {
        std::string sstr = "]:";
        int idx          = line.find(sstr) -1 ;
        std::string lvl  = line.substr(1, idx);
        return lvl;
    }

    std::string reformat(std::string line) {
        std::string logline = message(line) + " (" + log_level(line) + ")";
        return logline;
    }
}
