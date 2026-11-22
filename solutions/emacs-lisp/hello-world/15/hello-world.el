(defun hello ()
  (with-temp-buffer
    (insert "...././.-../.-../---/--..-- .--/---/.-./.-../-..!")
    (unmorse-region (point-min) (point-max))
    (upcase-initials-region (point-min) (point-max))
    (buffer-string)))

(provide 'hello-world)
