export const colorCode = ( colorName : string ) => {
    let colorCode = -1;
    for ( var i = 0; i < COLORS.length; i++ ) {
        if ( colorName == COLORS[i] ) {
            colorCode = i;
            break;
        }
    }
    return colorCode;
}

export const COLORS = [
    "black",
    "brown",
    "red",
    "orange",
    "yellow",
    "green",
    "blue",
    "violet",
    "grey",
    "white",
];
