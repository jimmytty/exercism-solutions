(defun hello ()
  (with-temp-buffer
    (insert-file-contents (expand-file-name "./.meta/config.json"))
    (let ((blurb (plist-get 
                  (json-parse-buffer :object-type 'plist)
                  :blurb)))
      (erase-buffer)
      (insert blurb))
    (goto-char (point-min))
    (zap-to-char 1 #x22)
    (string-trim-right (buffer-string) "\".")))
                
(provide 'hello-world)
