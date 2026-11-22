(defun hello ()
  (with-temp-buffer
    (let ((words (list '("hotel" "echo" "lima" "lima" "oscar" "comma")
                       '("whiskey" "oscar" "romeo" "lima" "delta" "!"))))
      (insert
       (mapconcat
        (lambda (word)
          (string-join word "-"))
        words
        " ")))
    (denato-region (point-min) (point-max))
    (upcase-initials-region (point-min) (point-max))
    (buffer-string)))

(provide 'hello-world)
