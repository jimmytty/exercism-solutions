;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (mapcan (lambda (e) (list (funcall op e))) lst))

(provide 'accumulate)
;;; accumulate.el ends here
