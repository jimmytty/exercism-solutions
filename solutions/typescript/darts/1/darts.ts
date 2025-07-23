const radius: number[] = [ 1, 5, 10];
const points: number[] = radius.slice(0).reverse();


export function score(x: number, y: number): number {
    let result: number = 0;
    let spot: number = [ x, y ].reduce(( a, b ) => a ** 2 + b ** 2);
    for ( let i in radius ) {
        if ( spot <= radius[i] ** 2 ) {
            result = points[i];
            break;
        }
    }
    return result;
}
