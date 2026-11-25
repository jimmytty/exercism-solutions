;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (let ((new-lst (copy-sequence lst)))
    (dotimes (i (length lst))
      (setf (nth i new-lst) (apply op (list (nth i new-lst)))))
    new-lst))

(provide 'accumulate)
;;; accumulate.el ends here
