(defun hello ()
  (let ((exclamation "!")
        (interjection "hello")
        (list-separator ", ")
        (noun "world"))
    (mapconcat 'upcase-initials
               `(,interjection ,list-separator ,noun ,exclamation))))

(provide 'hello-world)
