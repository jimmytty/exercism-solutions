;;; bob.el --- Bob (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun response-for (phrase)
  (setq case-fold-search nil)
  (let ((string
         (replace-regexp-in-string "[\t\n\v\f\r ,'!#%(*@^$]+" "" phrase)))
    (cond ((string-match-p "\\`[A-Z]+\\?\\'" string)
           "Calm down, I know what I'm doing!")
          ((string-match-p "\\`[0-9]*[A-Z]+[0-9]*[^?]\\'" string)
           "Whoa, chill out!")
          ((string-match-p "\\?\\'" string)
           "Sure.")
          ((eq "" string)
           "Fine. Be that way!")
          (t "Whatever."))))

(provide 'bob)
;;; bob.el ends here
