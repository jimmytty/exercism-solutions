(defun hello ()
  (with-temp-buffer
    (insert-file-contents (expand-file-name "HELLO" data-directory))
    (goto-char (point-min))
    (re-search-forward "^C\t")
    (kill-ring-save (re-search-forward "(")
                    (- (re-search-forward ")") 1))
    (erase-buffer)
    (yank)
    (upcase-initials
     (string-trim
      (read (buffer-substring-no-properties (point-min) (point-max)))))))

(provide 'hello-world)
