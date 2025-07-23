;;; grains.el --- Grains exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun square (n)
  (let ((counter 0))
    (dotimes (_ n) (setq counter (if (= counter 0) 1(+ counter counter))))
    counter)
)

(defun total ()
  (- (* (square 64) 2) 1)
)

(provide 'grains)
;;; grains.el ends here
