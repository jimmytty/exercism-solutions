;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
;; Determine whether a number is an Armstrong number.
;; An Armstrong number is a number that is the sum of its own digits
;; each raised to the power of the number of digits.

;;; Code:

(defun armstrong-p (n)
  (let (
        (num n)
        (sum 0)
        (digits (cond ((= 0 n) 1) (t (floor (+ 1 (log (abs n) 10))))))
        )
    (while (> num 0)
      (setq sum (+ sum (expt (% num 10) digits)))
      (setq num (/ num 10))
      )
    (= n sum)
    )
 )

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
