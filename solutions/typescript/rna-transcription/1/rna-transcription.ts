let map: { [key: string]: string } = {
    G: "C",
    C: "G",
    T: "A",
    A: "U",
};

export function toRna( dna: string ) :string {
    // throw new Error('Remove this statement and implement this function')
    let rna: string = "";
    for ( let i = 0; i < dna.length; i++ ) {
        const char: string = dna[i];
        if ( map.hasOwnProperty(char) ) {
            rna = rna + map[char];
        } else {
            throw new Error('Invalid input DNA.')
        }
    }
    return rna;
}
