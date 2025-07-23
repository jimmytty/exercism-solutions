;;; darts.el --- Darts (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun score (x y)
  (let ((spot (+ (expt x 2) (expt y 2))))
    (cond ((<= spot (expt  1 2)) 10)
          ((<= spot (expt  5 2))  5)
          ((<= spot (expt 10 2))  1)
          (t 0))))

(provide 'darts)
;;; darts.el ends here
