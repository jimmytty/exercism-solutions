#include "darts.h"

int score(coordinate_t landing_position) {
    float spot = powf(landing_position.x, 2.0) + powf(landing_position.y, 2.0);
    int points = 0;

    if ( spot <= powf(1.0, 2.0) ) {
        points = 10;
    } else if ( spot <= powf(5.0, 2.0) ) {
        points = 5;
    } else if ( spot <= powf(10.0, 2.0) ) {
        points = 1;
    }

    return points;
}
