(import (rnrs))

(define (nucleotide-count dna)
  (let ((characters (string->list dna)) (keys (string->list "ACGT")))
    (if (null?
         (filter (lambda(c) (not (memq c keys)) ) characters))
        (map
         (lambda(x)
           (cons x (length (filter (lambda(c) (eq? x c)) characters))))
         keys)
        (raise "error"))))
