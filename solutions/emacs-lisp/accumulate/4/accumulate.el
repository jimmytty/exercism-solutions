;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op) 
  (let ((new-lst '()))
    (dolist (e lst)
      (push (funcall op e) new-lst))
    (reverse new-lst)))

(provide 'accumulate)
;;; accumulate.el ends here
