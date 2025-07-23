;;; leap.el --- Leap exercise (exercism)

;;; Commentary:

;;; Code:

(defun leap-year-p (year)
  (if (and (eq (% year 4) 0)
           (or (not (eq (% year 100) 0))
               (and (eq (% year 100) 0)
                    (eq (% year 400) 0))))
      t))

(provide 'leap-year-p)
;;; leap.el ends here
