;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op &optional acc)
  (if lst
      (accumulate (cdr lst) op (cons (funcall op (car lst)) acc))
    (reverse acc)))

(provide 'accumulate)
;;; accumulate.el ends here
