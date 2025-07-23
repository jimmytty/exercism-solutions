;;; raindrops.el --- Raindrops (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:


(defun convert (n)
  (let ((sounds
         (concat
          (and (zerop (% n 3)) "Pling")
          (and (zerop (% n 5)) "Plang")
          (and (zerop (% n 7)) "Plong")
          )))
    (if (string-empty-p sounds)
        (number-to-string n)
      sounds)
    )
  )

(provide 'raindrops)
;;; raindrops.el ends here
