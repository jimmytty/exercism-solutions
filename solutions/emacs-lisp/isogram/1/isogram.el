;;; isogram.el --- isogram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun isogramp (phrase)
  (let
      ((chars
        (cl-remove-if-not
         (lambda(c)(and (>= c 65) (<= c 90)))
         (vconcat (upcase phrase)))))
    (= (length (cl-delete-duplicates chars))
       (length chars))
    )
  )


(provide 'isogram)
;;; isogram.el ends here
