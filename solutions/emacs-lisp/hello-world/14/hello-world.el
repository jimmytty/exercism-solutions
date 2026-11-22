(defun hello ()
  (upcase-initials
   (downcase
    (format "%s%s, %s!"
            (car (last (split-string (char-to-name ?헬))))
            (car (last (split-string (char-to-name ?ሎ))))
            (car (split-string (char-to-name ?🗺)))))))

(provide 'hello-world)
