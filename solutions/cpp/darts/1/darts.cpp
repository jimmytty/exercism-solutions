#include "darts.h"

namespace darts {
    int score(double x, double y) {
        double spot = pow(x, 2) + pow(y, 2);
        int points = 0;
        if      ( spot <= pow( 1, 2) ) { points = 10; }
        else if ( spot <= pow( 5, 2) ) { points =  5; }
        else if ( spot <= pow(10, 2) ) { points =  1; }
        return points;
    }
} // namespace darts
