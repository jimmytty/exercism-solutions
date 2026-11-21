(defun hello ()
  (concat
   (upcase-initials
    (string-replace
     "-" ", "
     (file-name-nondirectory
      (file-name-sans-extension (symbol-file 'hello))))) "!")
  )

(provide 'hello-world)
