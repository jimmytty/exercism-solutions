;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun acronym (phrase)
  (mapconcat
   (lambda (word) (substring word 0 1))
   (split-string
    (upcase
     (replace-regexp-in-string
      "[[:punct:]]+" ""
      (replace-regexp-in-string "-+" " " phrase))))))

(provide 'acronym)
;;; acronym.el ends here
