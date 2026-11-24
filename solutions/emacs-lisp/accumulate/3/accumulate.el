;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op) 
  (cl-mapcar op lst))

(provide 'accumulate)
;;; accumulate.el ends here
