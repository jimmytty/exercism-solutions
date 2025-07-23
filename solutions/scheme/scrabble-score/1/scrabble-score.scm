(import (rnrs))

(define (score word)
  (apply
   +
   (map
    (lambda(c)
      (cond
       ((memq c (string->list "AEIOULNRST")) 1)
       ((memq c (string->list "DG"))         2)
       ((memq c (string->list "BCMP"))       3)
       ((memq c (string->list "FHVWY"))      4)
       ((memq c (string->list "K"))          5)
       ((memq c (string->list "JX"))         8)
       ((memq c (string->list "QZ"))        10)
       (0)
       ))
    (string->list (string-upcase word)))))


