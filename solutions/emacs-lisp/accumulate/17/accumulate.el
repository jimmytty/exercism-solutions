;;; accumulate.el --- Accumulate (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun accumulate (lst op)
  (with-temp-buffer
    (dolist (e lst)
      (insert (format "| %s |\n"
                      (or (and (numberp e) (number-to-string e)) e))))
    (insert "#+tblfm: $2=")
    (insert (format "'(prin1-to-string (funcall (read \"%s\") $1))"
                    (string-replace "\"" "\\\"" (prin1-to-string op))))
    (when (numberp (car lst))
      (insert ";N"))
    (org-mode)
    (org-ctrl-c-ctrl-c)
    (goto-char (point-min))
    (org-mode)
    (mapcar (lambda (row)
              (read (cadr row)))
            (org-table-to-lisp))))

(provide 'accumulate)
;;; accumulate.el ends here
