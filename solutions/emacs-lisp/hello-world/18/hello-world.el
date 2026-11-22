(defun hello ()
  (string-trim-right
   (eshell-command-result "echo \"$PWD['[/-]' -2], $PWD['[/-]' -1]!\"(:C)")))

(provide 'hello-world)
