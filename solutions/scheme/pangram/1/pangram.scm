(import (rnrs))

(define (pangram? phrase)
  (let ((alpha (string->list "abcdefghijklmnopqrstuvwxyz")))
    (=
     (apply
      +
      (map
       (lambda(c)
         (if (memq c (string->list (string-downcase phrase))) 1 0))
       alpha))
   (length alpha))))
