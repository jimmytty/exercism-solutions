to_rna <- function(dna) {
    f <- 'GCTA'
    t <- 'CGAU'
    if ( nchar(gsub(sprintf('[%s]',f), '', dna)) != 0 ) { stop('') }
    chartr(f, t, dna)
}
