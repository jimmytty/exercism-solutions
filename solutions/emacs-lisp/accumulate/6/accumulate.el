;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (cl-loop for e in lst collect (funcall op e)))

(provide 'accumulate)
;;; accumulate.el ends here
