number_type <- function(n) {
    aliquot_sum <- sum(which(n %% seq_len(n - 1) == 0))
    if      ( aliquot_sum < n )  { "deficient" }
    else if ( aliquot_sum == n ) { "perfect"   }
    else                         { "abundant"  }
}
