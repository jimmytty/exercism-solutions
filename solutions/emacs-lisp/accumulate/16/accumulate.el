;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (seq-reduce (lambda (acc e)
                (append acc (list (funcall op e))))
              lst nil))

(provide 'accumulate)
;;; accumulate.el ends here
