(defun hello ()
  (string-trim-right
   (eshell-command-result "echo \"$PWD['[/-]' -4], $PWD['[/-]' -2]!\"(:C)")))

(provide 'hello-world)
