;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst '()))
    (seq-doseq (e lst)
      (setq new-lst (append new-lst (list (apply op (list e))))))
    new-lst))

(provide 'accumulate)
;;; accumulate.el ends here
