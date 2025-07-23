(import (rnrs))

(define (hamming-distance strand-a strand-b)
  (length
   (filter
    (lambda(b)(equal? #f b))
    (map eq? (string->list strand-a) (string->list strand-b))))
)
