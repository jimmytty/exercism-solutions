(defun hello ()
  (mapconcat
   (lambda (c)
     (format "%c" (char-from-name c)))
   '("LATIN CAPITAL LETTER H"
     "LATIN SMALL LETTER E"
     "LATIN SMALL LETTER L"
     "LATIN SMALL LETTER L"
     "LATIN SMALL LETTER O"
     "COMMA"
     "SPACE"
     "LATIN CAPITAL LETTER W"
     "LATIN SMALL LETTER O"
     "LATIN SMALL LETTER R"
     "LATIN SMALL LETTER L"
     "LATIN SMALL LETTER D"
     "EXCLAMATION MARK")))

(provide 'hello-world)
