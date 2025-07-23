export function decodedValue( resistors : string[] ) {
    let colors : string[] = [
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

    let values : number[] = [];
    let maxResistors = 2;
    for ( var i = 0; i < maxResistors; i++ ) {
        for ( var j = 0; j < colors.length; j++ ) {
            if ( resistors[i] == colors[j] ) {
                values[i] = j;
            }
        }
    }

    return +values.join("");
}
