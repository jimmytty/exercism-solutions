// @ts-check
//
// The line above enables type checking for this file. Various IDEs interpret
// the @ts-check directive. It will give you helpful autocompletion when
// implementing this exercise.

/**
 * Determines how long it takes to prepare a certain juice.
 *
 * @param {string} name
 * @returns {number} time in minutes
 */
export function timeToMixJuice(name) {
    let time;
    switch (name) {
        case 'Pure Strawberry Joy' : time = 0.5; break;
        case 'Energizer'           : // fallthrough
        case 'Green Garden'        : time = 1.5; break;
        case 'Tropical Island'     : time = 3; break;
        case 'All or Nothing'      : time = 5; break;
        default: time = 2.5;
    }
    return time;
}

/**
 * Calculates the number of limes that need to be cut
 * to reach a certain supply.
 *
 * @param {number} wedgesNeeded
 * @param {string[]} limes
 * @returns {number} number of limes cut
 */
export function limesToCut(wedgesNeeded, limes) {
    if (wedgesNeeded == 0) { return 0; }

    let sum    = 0;
    let count  = 0;
    let i      = 0;

    while ( i < limes.length ) {
        switch (limes[i]) {
            case 'small'  : sum +=  6; break;
            case 'medium' : sum +=  8; break;
            case 'large'  : sum += 10; break;
        }
        i++;
        if ( sum >= wedgesNeeded ) {
            count = i;
            break;
        }
    }
    if ( sum < wedgesNeeded ) {
        count = limes.length;
    }

    return count;
}

/**
 * Determines which juices still need to be prepared after the end of the shift.
 *
 * @param {number} timeLeft
 * @param {string[]} orders
 * @returns {string[]} remaining orders after the time is up
 */
export function remainingOrders(timeLeft, orders) {
    let sum   = 0;
    let count = 0;
    let i     = 0;

    while (i < orders.length ) {
        sum += timeToMixJuice(orders[i]);
        i++;
        if ( sum >= timeLeft ) {
            count = i;
            break;
        }
    }

    if ( sum < timeLeft ) { count = orders.length }

    let left = [];
    i = count;
    while (i < orders.length ) {
        left.push(orders[i]);
        i++;
    }

    return left;
}
