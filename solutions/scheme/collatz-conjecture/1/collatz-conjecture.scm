(import (rnrs))

(define (collatz n)
  (let loop ((x n) (count 0))
    (cond
     ((= x 1) count)
     ((even? x) (loop (/ x 2) (+ count 1)))
     (else (loop (+ 1 (* x 3)) (+ count 1)))
     )))
