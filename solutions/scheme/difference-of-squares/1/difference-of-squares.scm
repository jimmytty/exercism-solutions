(import (rnrs))

(define (square-of-sum n)
  (expt
   (apply
    +
    (let loop ((i n) (acc '()))
      (if (zero? i)
          acc
          (loop (- i 1) (cons i acc))))) 2))

(define (sum-of-squares n)
  (apply
   +
   (let loop ((i n) (acc '()))
     (if (zero? i)
         acc
         (loop (- i 1) (cons (* i i) acc))))))

(define (difference-of-squares n)
  (- (square-of-sum n) (sum-of-squares n)))




(let loop ((i 6) (accumulator '()))
    (if (zero? i)
        accumulator
        (loop (- i 1) (cons i accumulator))))
