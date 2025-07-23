(import (rnrs))

(define (acronym test)
  (apply
   string-append
   (map (lambda(elem) (if(> (string-length elem) 0) (substring elem 0 1) elem))
        (string-split
         (list->string
          (let ((alpha (string->list "ABCDEFGHIJKLMNOPQRSTUVWXYZ'")))
            (map
             (lambda(c) (if (memq c alpha) c #\space))
             (string->list (string-upcase test)))))
         #\space))))
