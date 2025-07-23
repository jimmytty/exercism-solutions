;;; allergies.el --- Allergies Exercise (exercism)  -*- lexical-binding: t; -*-
;;; Commentary:

;;; Code:

(defun allergen-list (score)
  (let ((allergy-score
         '((128 . "cats")
           ( 64 . "pollen")
           ( 32 . "chocolate")
           ( 16 . "tomatoes")
           (  8 . "strawberries")
           (  4 . "shellfish")
           (  2 . "peanuts")
           (  1 . "eggs")))
        (scr (% score 256))
        (lst ()))
    (dolist (e allergy-score)
      (if (>= scr (car e))
          (progn
            (setq scr (abs (- scr (car e))))
            (push (cdr e) lst))))
    lst))

(defun allergic-to-p (score allergen)
  (member allergen (allergen-list score)))

(provide 'allergies)
;;; allergies.el ends here
