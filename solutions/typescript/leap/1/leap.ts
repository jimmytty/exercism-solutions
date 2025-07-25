export function isLeap( year : number ) {
    if ( year % 4 == 0 &&
        ( year % 100 != 0 ||
            ( year % 100 == 0 && year % 400 == 0 ))) {
        return true;
    }
    return false;
}
