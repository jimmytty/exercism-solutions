(import (rnrs))

(define (leap-year? year)
  (and (= (modulo year 4) 0)
           (or (not (= (modulo year 100) 0))
               (and (= (modulo year 100) 0)
                    (= (modulo year 400) 0)))))

