;;; gigasecond.el --- Gigasecond (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

(defun add (second minute hour day month year)
  (setenv "TZ" "UTC0")
  (mapcar
   'string-to-number
   (split-string
    (format-time-string
     "%S %M %H %d %m %Y"
     (encode-time (+ second 1e9) minute hour day month year "UTC0"))))
  )


(provide 'gigasecond)
;;; gigasecond.el ends here
