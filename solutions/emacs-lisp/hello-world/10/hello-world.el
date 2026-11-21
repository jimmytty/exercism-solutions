(defun hello ()
  (let* ((bin-strings
          '("2#1001000"
            "2#1100101"
            "2#1101100"
            "2#1101100"
            "2#1101111"
            "2#0101100"
            "2#0100000"
            "2#1010111"
            "2#1101111"
            "2#1110010"
            "2#1101100"
            "2#1100100"
            "2#0100001")))
    (calc)
    (with-temp-buffer
      (insert "[")
      (insert (string-join bin-strings ","))
      (insert "]")
      (require 'calc-ext)
      (calc-display-strings 1)
      (let ((result (calc-eval (buffer-string))))
        (erase-buffer)
        (insert (string-trim result "\"" "\"")))
       (buffer-string))))

(provide 'hello-world)
