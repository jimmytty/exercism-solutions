;;; binary-search.el --- Binary Search (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun find-binary (array value)
  (seq-position array value))

(provide 'binary-search)
;;; binary-search.el ends here
