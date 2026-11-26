;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst '()))
    (seq-do
     (lambda (e)
       (push (apply op (list e)) new-lst))
     lst)
    (reverse new-lst)))

(provide 'accumulate)
;;; accumulate.el ends here
