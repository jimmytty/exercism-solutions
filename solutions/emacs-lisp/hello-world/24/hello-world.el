(defun hello ()
  (let ((spec
         (list (cons ?i "Hello")
               (cons ?s ", ")
               (cons ?n "World")
               (cons ?e "!"))))
    (format-spec "%i%s%n%e" spec)))

(provide 'hello-world)
