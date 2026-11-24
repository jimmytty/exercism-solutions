;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op) 
  (seq-map op lst))

(provide 'accumulate)
;;; accumulate.el ends here
