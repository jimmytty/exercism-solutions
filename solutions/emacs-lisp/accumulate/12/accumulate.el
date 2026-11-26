;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst '()))
    (cl-loop for i from 0 to (- (length lst) 1) do
             (push (funcall op (elt lst i)) new-lst))
    (reverse new-lst)))

(provide 'accumulate)
;;; accumulate.el ends here
