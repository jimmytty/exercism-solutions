;;; collatz-conjecture.el --- Collatz Conjecture (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun steps (number)
  "Count the steps to reach 1 using the Collatz conjecture."
  (if (< number 1) (error ""))
  (let ((n number) (counter 0))
    (while (> n 1)
      (setq counter (+ counter 1))
      (cond ((= (% n 2) 0) (setq n (/ n 2)))
            (t (setq n (+ (* n 3) 1) ))))
    counter
    )
  )

(provide 'collatz-conjecture)
;;; collatz-conjecture.el ends here
