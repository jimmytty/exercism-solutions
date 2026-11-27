;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (cl-labels
      ((my-map (acc)
         (if lst
             (my-map (cons (funcall op (pop lst)) acc))
           acc)))
    (reverse (my-map nil))))

(provide 'accumulate)
;;; accumulate.el ends here
