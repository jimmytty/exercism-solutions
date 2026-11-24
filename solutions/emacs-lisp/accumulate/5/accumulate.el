;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst '()))
    (while lst
      (setq new-lst (append new-lst (list (apply op (list (pop lst)))))))
    new-lst))

(provide 'accumulate)
;;; accumulate.el ends here
