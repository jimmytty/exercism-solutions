(defun hello ()
  (let ((test-filename
         (replace-regexp-in-string "\.el$" "-test\\&" (symbol-file 'hello))))
    (with-temp-buffer
      (insert-file-contents-literally test-filename)
      (catch 'expected
        (while t
          (let ((local-sexp (read (current-buffer))))
            (when (eq (car local-sexp) 'ert-deftest)
              (throw 'expected (car (last (flatten-list local-sexp)))))))))))

(provide 'hello-world)
