#include "queen_attack.h"

attack_status_t can_attack(position_t queen_1, position_t queen_2) {
    if ( (queen_1.row == queen_2.row && queen_1.column == queen_2.column)
         || queen_1.row > 7 || queen_1.column > 7
         || queen_2.row > 7 || queen_2.column > 7
       )
    { return INVALID_POSITION; }

    if ( queen_1.row == queen_2.row || queen_1.column == queen_2.column ) {
        return CAN_ATTACK;
    }

    int spot_a = queen_1.row * 10 + queen_1.column;
    int spot_b = queen_2.row * 10 + queen_2.column;

    int incr[] = { 9, 11 };
    for ( int i = 0; i < 2; i++ ) {
        for ( int spot = spot_a; spot <= 77; spot += incr[i] ) {
            if ( spot == spot_b ) { return CAN_ATTACK; }
        }
        for ( int spot = spot_a; spot >= 0; spot -= incr[i] ) {
            if ( spot == spot_b ) { return CAN_ATTACK ; }
        }
    }

    return CAN_NOT_ATTACK;
}
