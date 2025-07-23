(import (rnrs))

(define map_pairs '((""   "")
                    ("G" "C")
                    ("C" "G")
                    ("T" "A")
                    ("A" "U")))

(define (dna->rna dna)
  (define rna '())
  (for-each (lambda (nucleotide)
              (for-each
               (lambda (pair)
                 (cond ((equal? (car pair) nucleotide)
                        (set! rna (append rna (cdr pair))))))
               map_pairs))
            (map string (string->list (car dna))))
  (apply string-append rna))
