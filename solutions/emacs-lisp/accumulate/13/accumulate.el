;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst '()))
    (cl-loop until (not lst) do
             (push (funcall op (pop lst)) new-lst))
    (reverse new-lst)))

(provide 'accumulate)
;;; accumulate.el ends here
