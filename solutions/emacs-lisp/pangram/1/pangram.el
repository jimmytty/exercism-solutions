;;; pangram.el --- Pangram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun pangramp (phrase)
  (=
   (length
    (cl-delete-duplicates
     (cl-remove-if-not
      (lambda(c)(and (>= c 65) (<= c 90)))
      (vconcat (upcase phrase)))))
   26)
  )


(provide 'pangram)
;;; pangram.el ends here
