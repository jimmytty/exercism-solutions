;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun hamming-distance (string-one string-two)
  (let ((counter 0)
        (list-one (string-to-list string-one))
        (list-two (string-to-list string-two))
        )
    (if (not (eq (safe-length list-one) (safe-length list-two)))
        (error nil)
      (loop for i in list-one
            for j in list-two
            do (if (not (eq i j)) (incf counter))))
    counter))

(provide 'hamming)
;;; hamming.el ends here
