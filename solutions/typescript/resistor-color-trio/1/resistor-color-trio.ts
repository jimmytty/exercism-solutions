export function decodedResistorValue( resistors : string[] ) {
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
    let suffix : string = 'ohms';

    for ( var i = 0; i < 3; i++ ) {
        for ( var j = 0; j < colors.length; j++ ) {
            if ( resistors[i] == colors[j] ) {
                if ( i == 2 ) {
                    for ( var k = 1; k <= j; k++ ) values.push(0);
                }
                else { values[i] = j; }
                break;
            }
        }
    }

    if ( values.length > 3 ) {
        if ( values.slice(-3).toString() == [0,0,0].toString() ) {
            values.splice(-3);
            suffix = 'kilo' + suffix;
        }
    }

    let value = values.join("");

    return `${value} ${suffix}`;
}
