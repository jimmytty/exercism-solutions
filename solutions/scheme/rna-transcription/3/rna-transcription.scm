(import (rnrs))

(define (dna->rna dna)
  (list->string
   (map
    (lambda(c)
      (cond ((eq? c #\G) #\C)
            ((eq? c #\C) #\G)
            ((eq? c #\T) #\A)
            ((eq? c #\A) #\U)
            (c) ))
    (string->list dna))))

