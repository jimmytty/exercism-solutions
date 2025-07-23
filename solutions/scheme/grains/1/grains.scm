(import (rnrs))

(define (square n)
  (cond
   ((or (< n 1) (> n 64)) (raise n)))
  (let loop ((i n) (x 1))
    (if (> i 1)
        (loop (- i 1) (+ x x))
        x))
  )

(define total 18446744073709551615)
