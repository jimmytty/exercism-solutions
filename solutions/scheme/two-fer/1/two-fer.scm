(import (rnrs))

(define (two-fer . maybe-name)
  (format
   #f
   "One for ~a, one for me."
   (cond ((null? maybe-name) "you")
         (else (car maybe-name))))
)

