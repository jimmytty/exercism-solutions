;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst (list nil)))
    (mapc
     (lambda (e) (nconc new-lst (list (apply op (list e)))))
     lst)
    (cdr new-lst)))

(provide 'accumulate)
;;; accumulate.el ends here
