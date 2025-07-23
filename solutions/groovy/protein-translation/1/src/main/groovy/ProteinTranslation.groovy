class ProteinTranslation {

    static proteins(strand) {
        // throw new UnsupportedOperationException('Method implementation is missing')
        def map = [
            Methionine:    [ 'AUG'                      ],
            Phenylalanine: [ 'UUU', 'UUC'               ],
            Leucine:       [ 'UUA', 'UUG'               ],
            Serine:        [ 'UCU', 'UCC', 'UCA', 'UCG' ],
            Tyrosine:      [ 'UAU', 'UAC'               ],
            Cysteine:      [ 'UGU', 'UGC'               ],
            Tryptophan:    [ 'UGG'                      ],
            STOP:          [ 'UAA', 'UAG', 'UGA'        ],
        ]
        def dict = [:]
        map.each{ k, list -> list.each{ e -> dict[e]=k } }
        def codons = strand.split("(?<=\\G.{3})")
        def proteins = []

        for ( codon in codons ) {
            if ( dict.containsKey(codon) ) {
                def protein = dict.getAt(codon)
                if ( protein == 'STOP' ) break
                proteins.add(protein)
            }
        }

        return proteins
    }
}
