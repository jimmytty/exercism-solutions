;;; anagram.el --- Anagram (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(cl-defun anagrams-for (word candidates)
  (cl-loop
   for candidate in candidates
   when (and
         (= (length word) (length candidate))
         (not (cl-every #'eq
                        (string-to-list (downcase word))
                        (string-to-list (downcase candidate))))
         (cl-every #'eq
                   (sort (string-to-list (downcase word))      '<)
                   (sort (string-to-list (downcase candidate)) '<)))
   collect candidate))

(provide 'anagram)
;;; anagram.el ends here
